using SuperReaders.Models.Entities;
using System.Collections.Generic;

namespace SuperReaders.Services.DomainObject
{
    public interface IUserDomainObject
    {
        /// <summary>
        /// This Method return all Users of the role Specified and apply the business rules
        /// </summary>
        /// <param name="">
        /// <returns>Array of Users of the role Specified</returns>
        IEnumerable<User> GetUsers();

        /// <summary>
        /// This Method return an User by ID of the role Specified and apply the business rules
        /// </summary>
        /// <param name="">
        /// <returns>An User of the role Specified</returns> 
        IEnumerable<User> GetUser(int id);

        /// <summary>
        /// This Method create an User of the role Specified and apply the business rules
        /// </summary>
        /// <param name="user">user to create</param>
        /// <returns></returns>
        void AddUser(User user);

        /// <summary>
        /// This Method update an User of the role Specified and apply the business rules
        /// </summary>
        /// <param name="user">user to update</param>
        /// <returns>status code 200</returns>
        void UpdateUser(User user);

        /// <summary>
        /// This Method update the status of an User of the role Specified and apply the business rules
        /// </summary>
        /// <param name="user">user to change status</param>
        /// <returns>status code 200</returns>
        void DeleteUser(int user);
    }
}
