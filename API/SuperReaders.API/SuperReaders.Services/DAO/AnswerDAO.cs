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
    public class AnswerDAO : IAnswerDAO
    {
        private DbAccess connection;
        public int AddAnswer(Answer answer)

        {
            try {
                using (IDbConnection db = connection.Connection)
                {
                    string sql = @"INSERT INTO [Answer]
		            ([IdStudent], [Text])
		            VALUES (@IdStudent,@Text);
		            SELECT CAST(SCOPE_IDENTITY() as int)";
                    var id = db.Query<int>(sql,
                        new
                        {
                            IdStudent = answer.IdStudent,
                            Text = answer.Text,
                        }).Single();
                    return id;

                }
            }
            catch (Exception e)
            {
                throw e;
            }


        }

        public void DeleteAnswer(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_Answer_Id, id);
                    db.ExecuteScalar<Answer>(Constants.SP_Answer_Delete, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public IEnumerable<Answer> GetAnswer(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_Answer_Id, id);
                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<Answer>(Constants.SP_Answer_GetById, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void UpdateAnswer(Answer answer)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_Answer_Id, answer.Id);
                    parameters.Add(Constants.P_Answer_Text, answer.Text);
                    db.ExecuteScalar<Answer>(Constants.SP_Answer_Update, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
