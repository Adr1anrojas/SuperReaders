using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;

namespace SuperReaders.Services.DomainObject
{
    public class UserDomainObject : IUserDomainObject
    {
        private IUserDAO _iuserDAO;
        public UserDomainObject(IUserDAO iuserDAO)
        {
            _iuserDAO = iuserDAO;
        }

        /// <summary>
        /// This EndPoint return all Users of the role Specified
        /// </summary>
        /// <param name="">
        /// <returns>Array of Users of the role Specified</returns>
        public IEnumerable<User> GetUsers()
        {
            try
            {
                return _iuserDAO.GetUsers();
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
                return _iuserDAO.GetUser(id);
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
                 _iuserDAO.AddUser(user);
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
                _iuserDAO.UpdateUser(user);
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
                _iuserDAO.DeleteUser(id);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

    }
}
