using SuperReaders.Models.Entities;
using System.Collections.Generic;


namespace SuperReaders.Contracts.Interfaces.IDAO
{
    public interface IUserDAO
    {
        /// <summary>
        /// This Method return all Users of the role Specified and Access the data
        /// </summary>
        /// <param name="role">
        /// <returns>Array of Users of the role Specified</returns>
        IEnumerable<User> GetUsers(string role);

        /// <summary>
        /// This Method return an User by ID of the role Specified and Access the data
        /// </summary>
        /// <param name="">
        /// <returns>An User of the role Specified</returns> 
        IEnumerable<User> GetUser(int id);

        /// <summary>
        /// This Method create an User of the role Specified and Access the data
        /// </summary>
        /// <param name="user">user to create</param>
        /// <returns></returns>
        int AddUser(User user);

        /// <summary>
        /// This Method return an User by userName of the role Specified and Access the data
        /// </summary>
        /// <param name="userName">user to create</param>
        /// <returns></returns>
        int GetUserByUserName(string userName);

        /// <summary>
        /// This Method update an User of the role Specified and Access the data
        /// </summary>
        /// <param name="user">user to update</param>
        /// <returns></returns>
        void UpdateUser(User user);

        /// <summary>
        /// This Method update the status of an User of the role Specified and Access the data
        /// </summary>
        /// <param name="id">user to change status</param>
        /// <returns></returns>
        void DeleteUser(int id);
    }
}
