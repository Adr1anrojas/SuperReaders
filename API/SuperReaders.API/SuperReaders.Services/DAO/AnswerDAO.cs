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
        public AnswerDAO()
        {
            connection = new DbAccess();
        }

        public int AddAnswer(Answer answer)

        {
            try {
                using (IDbConnection db = connection.Connection)
                {
                    string sql = @"INSERT INTO [Answer]
		            ([Text], [IsCorrect], [IdQuestion])
		            VALUES (@Text, @IsCorrect, @IdQuestion);
		            SELECT CAST(SCOPE_IDENTITY() as int)";
                    var id = db.Query<int>(sql,
                        new
                        {
                            Text = answer.Text,
                            IsCorrect = answer.IsCorrect,
                            IdQuestion = answer.IdQuestion
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

        public List<Answer> GetAnswersByIdQuestions(int idQuestion)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_Answer_IdQuestion, idQuestion);
                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<Answer>(Constants.SP_Answer_GetByIdQuestion, parameters, commandType: CommandType.StoredProcedure).ToList();
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
