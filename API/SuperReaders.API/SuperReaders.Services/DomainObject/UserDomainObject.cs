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
