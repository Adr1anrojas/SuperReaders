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
        private IClassRoomDAO _iClassRoomDAO;
        public UserDomainObject(IUserDAO iuserDAO, IAdminDAO iadminDAO, ITeacherDAO iTeacherDAO, IStudentDAO iStudentDAO, IClassRoomDAO iClassRoomDAO)
        {
            _iUserDAO = iuserDAO;
            _iAdminDAO = iadminDAO;
            _iTeacherDAO = iTeacherDAO;
            _iStudentDAO = iStudentDAO;
            _iClassRoomDAO = iClassRoomDAO;
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
        /// This EndPoint return all Students
        /// </summary>
        /// <param name="">
        /// <returns>Array of Students</returns>
        public IEnumerable<User> GetStudents()
        {
            List<User> admins;
            try
            {
                admins = _iUserDAO.GetStudents().ToList();
                if (admins.Count > 0)
                {
                    foreach (User item in admins)
                    {
                        item.classRoom = _iClassRoomDAO.GetClassRoomByIdStudent(item.StudentId).First();
                    }
                }
                return admins;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This EndPoint return all Admins
        /// </summary>
        /// <param name="">
        /// <returns>Array of Admins</returns>
        public IEnumerable<User> GetAdmins()
        {
            try
            {
                return _iUserDAO.GetAdmins();
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// This EndPoint return all Teachers
        /// </summary>
        /// <param name="">
        /// <returns>Array of Teachers</returns>
        public IEnumerable<User> GetTeachers()
        {
            List<User> teachers;
            try
            {
                teachers = _iUserDAO.GetTeachers().ToList();
                if(teachers.Count > 0) { 
                    foreach (User item in teachers)
                    {
                        item.classRoom = _iClassRoomDAO.GetClassRoomByIdTeacher(item.TeacherId).First();
                    }
                }
                return teachers;
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
                int idStudent = 0;
                int result = _iUserDAO.GetUserByUserName(user.UserName);
                if (result == 0)
                {
                   var userCreated = _iUserDAO.AddUser(user).First();
                    if (user.Role.Equals("Admin"))
                        _iAdminDAO.AddAdmin(userCreated.Id);
                    else if (user.Role.Equals("Teacher"))
                        _iTeacherDAO.AddTeacher(userCreated.Id, user.classRoom.Id);
                    else if (user.Role.Equals("Student")) { 
                       idStudent = _iStudentDAO.AddStudent(userCreated.Id);
                        _iUserDAO.AddStudentToClassRoom(user.classRoom.Id, idStudent);
                    }
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
                _iUserDAO.UpdateUser(user);
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
