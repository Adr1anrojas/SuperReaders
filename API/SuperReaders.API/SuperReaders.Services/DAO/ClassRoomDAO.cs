using Dapper;
using SuperReaders.API.Helper;
using SuperReaders.Contracts.Constants;
using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
namespace SuperReaders.Services.DAO
{
    public class ClassRoomDAO : IClassRoomDAO
    {
        private DbAccess connection;
        public ClassRoomDAO()
        {
            connection = new DbAccess();
        }
         /// <summary>
        /// This EndPoint return all Class Rooms
        /// </summary>
        /// <param name="">
        /// <returns>Array of ClassRooms </returns>
        public IEnumerable<ClassRoom> GetClassRooms()
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<ClassRoom>(Constants.SP_ClassRoom_GetAll, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This EndPoint return an ClassRoom by ID of Specified
        /// </summary>
        /// <param name="id">
        /// <returns>An ClassRom of the ID Specified</returns>
        public IEnumerable<ClassRoom> GetClassRoom(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_ClassRoom_Id, id);
                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<ClassRoom>(Constants.SP_ClassRoom_GetById, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
         /// <summary>
        /// This EndPoint return an ClassRoom by Teacher of Specified
        /// </summary>
        /// <param name="idTeacher">
        /// <returns>An ClassRom of the Teacher Specified</returns>
        public IEnumerable<ClassRoom> GetClassRoomByIdTeacher(int idTeacher)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_ClassRoom_IdTeacher, idTeacher);
                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<ClassRoom>(Constants.SP_ClassRoom_GetByIdTeacher, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        /// <summary>
        /// This EndPoint return an IdClassRoom by Name Specified
        /// </summary>
        /// <param name="">
        /// <returns>An IdClassRoom of the Name Specified</returns>
        public int GetClassRoomByName(string name)
        {
            try
            {
                int id = 0;
                using (IDbConnection db = connection.Connection)
                {
                    string sql = @" SELECT [Id] FROM[ClassRoom] WHERE [Name] = @Name COLLATE SQL_Latin1_General_CP1_CI_AS";
                    id = db.Query<int>(sql,
                    new
                    {
                        Name = name
                    }).Count();
                    return id;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
         /// <summary>
        /// This EndPoint create an ClassRoom
        /// </summary>
        /// <param name="classroom">classroom to create</param>
        /// <returns>status code 200</returns>
        public ClassRoom AddClassRoom(ClassRoom classRoom)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_ClassRoom_Name,classRoom.Name);
                    parameters.Add(Constants.P_ClassRoom_IdTeacher, classRoom.IdTeacher);
                    parameters.Add(Constants.P_ClassRoom_Status, classRoom.Status);
                    return db.Query<ClassRoom>(Constants.SP_ClassRoom_Create, parameters, commandType: CommandType.StoredProcedure).First();
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public void AddStudentClassRoom(ClassRoomDetail classRoomDetail){
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_ClassRoomDetail_IdClasRoom, classRoomDetail.IdClassRoom);
                    parameters.Add(Constants.P_ClassRoomDetail_IdStudent,classRoomDetail.IdStudent);
                    db.ExecuteScalar<ClassRoom>(Constants.SP_ClassRoomDetail, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }

        }
         // <summary>
        /// This EndPoint update status an ClassRoom Specified
        /// </summary>
        /// <param name="user">classRoom to update</param>
        /// <returns>status code 200</returns>
        public void DeleteClassRoom(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_ClassRoom_Id, id);
                    db.ExecuteScalar<ClassRoom>(Constants.SP_ClassRoom_Delete, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
           // <summary>
        /// This EndPoint update an ClassRoom Specified
        /// </summary>
        /// <param name="user">classRoom to update</param>
        /// <returns>status code 200</returns>
        public void UpdateClassRoom(ClassRoom classRoom)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_ClassRoom_Id, classRoom.Id);
                    parameters.Add(Constants.P_ClassRoom_Name,classRoom.Name);
                    parameters.Add(Constants.P_ClassRoom_IdTeacher, classRoom.IdTeacher);
                    parameters.Add(Constants.P_ClassRoom_Status, classRoom.Status);
                    db.ExecuteScalar<ClassRoom>(Constants.SP_ClassRoom_Update, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}