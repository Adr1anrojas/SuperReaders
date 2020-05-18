using Dapper;
using SuperReaders.API.Helper;
using SuperReaders.Contracts.Constants;
using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace SuperReaders.Services.DAO
{
    public class TeacherDAO : ITeacherDAO
    {
        private DbAccess connection;
        public TeacherDAO()
        {
            connection = new DbAccess();
        }

        public void AddTeacher(int id, int idClassRoom)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_Teacher_UserId, id);
                    parameters.Add(Constants.P_Teacher_ClassRoomId, idClassRoom);
                    db.ExecuteScalar<User>(Constants.SP_Teacher_Create, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

    }
}
