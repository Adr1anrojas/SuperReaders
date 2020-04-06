using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;
namespace SuperReaders.Contracts.Interfaces.IDomainObject
{
    public interface IClassRoomDomainObject
    {
        /// <summary>
        /// This Method return all Class Room and apply the business rules
        /// </summary>
        /// <param name="">
        /// <returns>Array of ClassRooms </returns>
        IEnumerable<ClassRoom> GetClassRooms();
            /// <summary>
        /// This Method return all Class Room by Teacher of Specied and apply the business rules
        /// </summary>
        /// <param name="idTeacher">
        /// <returns>Array of ClassRooms </returns>
        IEnumerable<ClassRoom> GetClassRoomByIdTeacher(int idTeacher);
        /// <summary>
        /// This Method return an Class Room by ID of the role Specified and apply the business rules
        /// </summary>
        /// <param name="">
        /// <returns>An Class Room of the role Specified</returns> 
        IEnumerable<ClassRoom> GetClassRoom(int id);

        /// <summary>
        /// This Method create an Class Room of the role Specified and apply the business rules
        /// </summary>
        /// <param name="classRoom">Class Room to create</param>
        /// <returns></returns>
        void AddClassRoom(ClassRoom classRoom);

        /// <summary>
        /// This Method update an ClassRoom of the role Specified and apply the business rules
        /// </summary>
        /// <param name="classRoom">ClassRoom to update</param>
        /// <returns>status code 200</returns>
        void UpdateClassRoom(ClassRoom classRoom);

        /// <summary>
        /// This Method update the status of an ClassRoom of the role Specified and apply the business rules
        /// </summary>
        /// <param name="id">ClassRoom to change status</param>
        /// <returns>status code 200</returns>
        void DeleteClassRoom(int id);
    }
}