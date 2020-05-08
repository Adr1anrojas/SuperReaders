using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using SuperReaders.Contracts.Constants;
using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Contracts.Interfaces.IDomainObject;
using SuperReaders.Models.Entities;
using SuperReaders.Models.Models;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;

namespace SuperReaders.Services.DomainObject
{
    public class LoginDomainObject : ILoginDomainObject
    {
        private ILoginDAO _iLoginDAO;
        private IConfiguration _config;
        private IClassRoomDAO _iClassRoomDAO;
        private IUserDAO _iUserDAO;
        public LoginDomainObject(ILoginDAO iLoginDAO, IConfiguration config, IClassRoomDAO iClassRoomDAO, IUserDAO iUserDAO)
        {
            _iLoginDAO = iLoginDAO;
            _config = config;
            _iClassRoomDAO = iClassRoomDAO;
            _iUserDAO = iUserDAO;
        }

        /// <summary>
        /// This Method return a User info and token if it have credentials valid.
        /// </summary>
        /// <param name="user">
        /// <returns>LoginResult</returns>
        public LoginResult Login(LoginCredential user)
        {
            LoginResult result;
            try
            {
                
                result = _iLoginDAO.Login(user).First();
                if (result != null)
                {
                    result.Token = BuildToken(result);
                    if (result.Role.Equals("Teacher"))
                    {
                        User userResult =_iUserDAO.GetTeacherById(result.Id);
                        result.TeacherId = userResult.TeacherId;
                        result.classRoom = _iClassRoomDAO.GetClassRoomByIdTeacher(result.TeacherId).First();
                    } else if (result.Role.Equals("Student")) {
                        User userResult = _iUserDAO.GetStudentById(result.Id);
                        result.StudentId = userResult.StudentId;
                        result.classRoom = _iClassRoomDAO.GetClassRoomByIdStudent(result.StudentId).First();
                    }
                } else
                    throw new Exception("UserName or Password invalid");
                return result;
            }
            catch (Exception e)
            {
                throw e;                                                        
            }
        }

         private string BuildToken(LoginResult user)
        {
            int tokenTime = Convert.ToInt32(_config[Constants.JWT_TOKEN_EXPIRATION_TIME]);

            var claims = new[]
            {
                    new Claim("Id", user.Id.ToString()),
                    new Claim("FirstName", user.FirstName),
                    new Claim("LastName", user.LastName ),
                    new Claim("UserName", user.UserName),
                    new Claim("Email", user.Email == null ? string.Empty : user.Email),
                    new Claim("IdSchool", user.IdSchool.ToString()),
                    new Claim("Status", user.Status.ToString()),
                    new Claim(ClaimTypes.Role, user.Role)
                };

            var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_config[Constants.JWT_KEY]));
            var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);
            var issuer = _config[Constants.JWT_ISSUER];
            var jwtToken = new JwtSecurityToken(issuer, issuer, claims, expires: DateTime.Now.AddMinutes(tokenTime), signingCredentials: creds);
            var token = new JwtSecurityTokenHandler().WriteToken(jwtToken);
            return token;
        }
    }
}
