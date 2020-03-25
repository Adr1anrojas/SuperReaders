using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Contracts.Interfaces.IDomainObject;
using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Linq;

namespace SuperReaders.Services.DomainObject
{
    public class UserDomainObject : IUserDomainObject
    {
        private IUserDAO _iUserDAO;
        private IAdminDAO _iAdminDAO;
        private ITeacherDAO _iTeacherDAO;
        private IStudentDAO _iStudentDAO;
        public UserDomainObject(IUserDAO iuserDAO, IAdminDAO iadminDAO, ITeacherDAO iTeacherDAO, IStudentDAO iStudentDAO)
        {
            _iUserDAO = iuserDAO;
            _iAdminDAO = iadminDAO;
            _iTeacherDAO = iTeacherDAO;
            _iStudentDAO = iStudentDAO;
        }

        /// <summary>
        /// This EndPoint return all Users of the role Specified
        /// </summary>
        /// <param name="">
        /// <returns>Array of Users of the role Specified</returns>
        public IEnumerable<User> GetUsers(string role)
        {
            try
            {
                return _iUserDAO.GetUsers(role);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This EndPoint return an User by ID of the role Specified
        /// </summary>
        /// <param name="">
        /// <returns>An User of the role Specified</returns>
        public IEnumerable<User> GetUser(int id)
        {
            try
            {
                return _iUserDAO.GetUser(id);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This EndPoint create an User of the role Specified
        /// </summary>
        /// <param name="user">user to create</param>
        /// <returns>status code 200</returns>
        public void AddUser(User user)
        {
            try
            {
                int result = _iUserDAO.GetUserByUserName(user.UserName);
                if (result == 0)
                {
                   int id = _iUserDAO.AddUser(user);
                    if (user.Role.Equals("Admin"))
                        _iAdminDAO.AddAdmin(id);
                    else if (user.Role.Equals("Maestro"))
                        _iTeacherDAO.AddTeacher(id);
                    else if (user.Role.Equals("Alumno"))
                        _iStudentDAO.AddStudent(id);
                }
                else
                    throw new ArgumentException("This user already exists");
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        // <summary>
        /// This EndPoint update an User of the role Specified
        /// </summary>
        /// <param name="user">user to update</param>
        /// <returns>status code 200</returns>
        public void UpdateUser(User user)
        {
            try
            {
                int result = _iUserDAO.GetUserByUserName(user.UserName);
                if (result == 0)
                    _iUserDAO.UpdateUser(user);
                else
                    throw new ArgumentException("This user already exists");
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        // DELETE: api/User
        /// <summary>
        /// This EndPoint update the status of an User of the role Specified
        /// </summary>
        /// <param name="user">user to change status</param>
        /// <returns>status code 200</returns>
        public void DeleteUser(int id)
        {
            try
            {
                _iUserDAO.DeleteUser(id);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

    }
}
