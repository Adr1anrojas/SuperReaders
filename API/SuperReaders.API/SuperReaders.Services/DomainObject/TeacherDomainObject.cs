using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Contracts.Interfaces.IDomainObject;
using SuperReaders.Models;
using SuperReaders.Models.Models;
using System;
using System.Collections.Generic;

namespace SuperReaders.Services.DomainObject
{
    public class TeacherDomainObject : ITeacherDomainObject
    {
        ITeacherDAO _iTeacherDAO;
        IUserDAO _iUserDAO;
        public TeacherDomainObject(ITeacherDAO iTeacherDAO, IUserDAO iUserDAO)
        {
            this._iTeacherDAO = iTeacherDAO;
            this._iUserDAO = iUserDAO;
        }

        public List<User> GetAllTeachers()
        {
            try
            {
                return this._iTeacherDAO.GetAllTeachers();
            }
            catch (Exception e)
            {
                throw;
            }
        }

        public User GetTeacherById(int id)
        {
            try
            {
                return this._iTeacherDAO.GetTeacherById(id);
            }
            catch (Exception e)
            {
                throw;
            }
        }

        public User CreateTeacher(User teacher)
        {
            try
            {

                return _iTeacherDAO.CreateTeacher(teacher);
            }
            catch (Exception e)
            {
                throw;
            }
        }
    }
}
