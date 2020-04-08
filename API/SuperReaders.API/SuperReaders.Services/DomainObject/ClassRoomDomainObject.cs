using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Contracts.Interfaces.IDomainObject;
using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Linq;

namespace SuperReaders.Services.DomainObject
{
    public class ClassRoomDomainObject : IClassRoomDomainObject
    {
        private IClassRoomDAO _iClassRoomDAO;
        public ClassRoomDomainObject(IClassRoomDAO iClassRoomDAO)
        {
            _iClassRoomDAO = iClassRoomDAO;
        }
        /// <summary>
        /// This EndPoint return all ClassRooms 
        /// </summary>
        /// <param name="">
        /// <returns>Array of ClassRooms</returns>
        public IEnumerable<ClassRoom> GetClassRooms()
        {
            try
            {
                return _iClassRoomDAO.GetClassRooms();
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This EndPoint return an Class Room by ID Specified
        /// </summary>
        /// <param name="">
        /// <returns>An User of id Specified</returns>
        public IEnumerable<ClassRoom> GetClassRoom(int id)
        {
            try
            {
                return _iClassRoomDAO.GetClassRoom(id);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public IEnumerable<ClassRoom> GetClassRoomByIdTeacher(int idTeacher)
        {
            try
            {
                return _iClassRoomDAO.GetClassRoomByIdTeacher(idTeacher);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
         /// <summary>
        /// This EndPoint create an ClassRoom
        /// </summary>
        /// <param name="classRoom">classRoom to create</param>
        /// <returns>status code 200</returns>
        public IEnumerable<ClassRoom> AddClassRoom(ClassRoom classRoom)
        {
            try
            {
                int result = _iClassRoomDAO.GetClassRoomByName(classRoom.Name);
                if (result == 0)
                    return _iClassRoomDAO.AddClassRoom(classRoom);
                else
                    throw new ArgumentException("This Class Room already exists");
            }
            catch (Exception e)
            {
                throw e;
            }
        }
         /// <summary>
        /// This EndPoint update an ClassRoom
        /// </summary>
        /// <param name="classRoom">classRoom to create</param>
        /// <returns>status code 200</returns>
        public void UpdateClassRoom(ClassRoom classRoom)
        {
            try
            {
                int result = _iClassRoomDAO.GetClassRoomByName(classRoom.Name);
                if (result == 0)
                    _iClassRoomDAO.UpdateClassRoom(classRoom);
                else
                    throw new ArgumentException("This Class Room already exists");
            }
            catch (Exception e)
            {
                throw e;
            }
        }
         // DELETE: api/ClassRoom
        /// <summary>
        /// This EndPoint update the status of an Class Room of the ID Specified
        /// </summary>
        /// <param name="id">classroom to change status</param>
        /// <returns>status code 200</returns>
        public void DeleteClassRoom(int id)
        {
            
            try
            {
                _iClassRoomDAO.DeleteClassRoom(id);
            }
            catch (Exception e)
            {
                throw e;
            }
        }

    }
}
