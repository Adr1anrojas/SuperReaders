using Dapper;
using SuperReaders.API.Helper;
using SuperReaders.Contracts.Constants;
using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace SuperReaders.Services.DAO
{
    public class StudentDAO : IStudentDAO
    {
        private DbAccess connection;
        public StudentDAO()
        {
            connection = new DbAccess();
        }

        public int AddStudent(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_Student_UserId, id);
                    var result = db.Query<Student>(Constants.SP_Student_Create, parameters, commandType: CommandType.StoredProcedure).First();
                    return result.Id;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

    }
}
