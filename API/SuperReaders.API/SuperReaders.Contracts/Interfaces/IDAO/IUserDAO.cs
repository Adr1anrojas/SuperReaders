using SuperReaders.Models.Entities;
using System.Collections.Generic;


namespace SuperReaders.Contracts.Interfaces.IDAO
{
    public interface IUserDAO
    {
        /// <summary>
        /// This Method return all User of the role Specified and Access the data
        /// </summary>
        /// <param name="role">
        /// <returns>Array of Users of the role Specified</returns>
        IEnumerable<User> GetUsers(string role);
        /// <summary>
        /// This Method return all Students of Access the data
        /// </summary>
        /// <param name="">
        /// <returns>Array of Students </returns>
        
        IEnumerable<User> GetStudents();
        /// <summary>
        /// This Method return all Admins of Access the data
        /// </summary>
        /// <param name="">
        /// <returns>Array of Admins </returns>

        IEnumerable<User> GetStudentsByClassRoom(int idClassRoom);
        /// <summary>
        /// This Method return all Students of Access the data
        /// </summary>
        /// <param name="">
        /// <returns>Array of Students </returns>
        
        IEnumerable<User> GetAdmins();
        /// <summary>
        /// This Method return all Teachers of Access the data
        /// </summary>
        /// <param name="">
        /// <returns>Array of Teachers </returns>
        IEnumerable<User> GetTeachers();

        /// <summary>
        /// This Method return an User by ID of the role Specified and Access the data
        /// </summary>
        /// <param name="">
        /// <returns>An User of the role Specified</returns> 
        IEnumerable<User> GetUser(int id);

        /// <summary>
        /// This Method return an User by ID of the role Teacher and Access the data
        /// </summary>
        /// <param name="">
        /// <returns>An User of the role Teacher</returns> 
        User GetTeacherById(int id);


        /// <summary>
        /// This Method return an User by ID of the role Teacher and Access the data
        /// </summary>
        /// <param name="">
        /// <returns>An User of the role Teacher</returns> 
        User GetStudentById(int id);
        
        /// <summary>
        /// This Method create an User of the role Specified and Access the data
        /// </summary>
        /// <param name="user">user to create</param>
        /// <returns></returns>
        IEnumerable<User> AddUser(User user);

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
        void DeleteUser(int id, string role);

        /// <summary>
        /// This Method add an student to ClassRoom
        /// </summary>
        /// <param name="idClassRoom">idClassRoom to insert</param>
        /// <param name="idStudent">idStudent to insert</param>
        /// <returns></returns>
        void AddStudentToClassRoom(int idClassRoom, int idStudent);

        /// <summary>
        /// This Method create an typeContent of the student specified
        /// </summary>
        /// <param name="typeContentStudent">typeContent to user</param>
        /// <returns></returns>
        void AddTypeContentStudent(TypeContent typeContentStudent);

        /// <summary>
        /// This Method update if an user a selected your content
        /// </summary>
        /// <param name="idStudent">typeContent to user</param>
        /// <returns></returns>
        void UpdateIsFirstTime(int idStudent);
    }
}
