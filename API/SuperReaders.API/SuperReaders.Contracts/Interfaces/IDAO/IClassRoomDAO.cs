using SuperReaders.Models.Entities;
using System.Collections.Generic;
namespace SuperReaders.Contracts.Interfaces.IDAO
{
    public interface IClassRoomDAO
    {
        /// <summary>
        /// This Method return all ClassRooms and Access the data
        /// </summary>
        /// <param name="role">
        /// <returns>Array of ClassRooms</returns>
        IEnumerable<ClassRoom> GetClassRooms();

        /// <summary>
        /// This Method return an ClassRoom by ID of the Specified ID and Access the data
        /// </summary>
        /// <param name="">
        /// <returns>An ClassRoom of the ID Specified</returns> 
        IEnumerable<ClassRoom> GetClassRoom(int id);

        /// <summary>
        /// This Method create an ClassRoom of Specified and Access the data
        /// </summary>
        /// <param name="classRoom">ClassRoom to create</param>
        /// <returns></returns>
        int AddClassRoom(ClassRoom classRoom);

        /// <summary>
        /// This Method return an ClassRoom by name of Specified and Access the data
        /// </summary>
        /// <param name="name">ClassRoom to create</param>
        /// <returns></returns>
        int GetClassRoomByName(string name);
          /// <summary>
        /// This Method return an ClassRoom by Teacher of Specified and Access the data
        /// </summary>
        /// <param name="idTeacher">ClassRoom to create</param>
        /// <returns></returns>
        IEnumerable<ClassRoom> GetClassRoomByIdTeacher(int idTeacher);
        /// <summary>
        /// This Method update an ClassRoom Specified and Access the data
        /// </summary>
        /// <param name="classRoom">ClassRoom to update</param>
        /// <returns></returns>
        void UpdateClassRoom(ClassRoom classRoom);

        /// <summary>
        /// This Method update the status of an ClassRoom of the ID Specified and Access the data
        /// </summary>
        /// <param name="id">ClassRoom to change status</param>
        /// <returns></returns>
        void DeleteClassRoom(int id);
        void AddStudentClassRoom(ClassRoomDetail classRoomDetail);
    }
}