using Dapper;
using SuperReaders.API.Helper;
using SuperReaders.Contracts.Constants;
using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Models.Entities;
using SuperReaders.Models.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace SuperReaders.Services.DAO
{
    public class LoginDAO : ILoginDAO
    {
        private DbAccess connection;
        public LoginDAO()
        {
            connection = new DbAccess();
        }
        /// <summary>
        /// This Method return a info of an user if have a valid credentials.
        /// </summary>
        /// <param name="user">
        /// <returns>LoginResult</returns>
        public IEnumerable<LoginResult> Login(LoginCredential user)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_Login_UserName, user.UserName);
                parameters.Add(Constants.P_Login_Password, user.Password);
                using (IDbConnection db = connection.Connection)
                {
                    var result = db.Query<LoginResult>(Constants.SP_Login_UserLoged, parameters, commandType: CommandType.StoredProcedure);
                    return result;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
