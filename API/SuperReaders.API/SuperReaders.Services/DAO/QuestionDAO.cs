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
    public class QuestionDAO :IQuestionDAO
    {
        private DbAccess connection;
        public int AddQuestion(Question question)

        {
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    string sql = @"INSERT INTO [Question]
		            ([IdContent], [Text])
		            VALUES (@IdContent,@Text);
		            SELECT CAST(SCOPE_IDENTITY() as int)";
                    var id = db.Query<int>(sql,
                        new
                        {
                            IdStudent = question.IdContent,
                            Text = question.Text,
                        }).Single();
                    return id;

                }
            }
            catch (Exception e)
            {
                throw e;
            }

        }

        public void DeleteQuestion(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_Question_Id, id);
                    db.ExecuteScalar<Question>(Constants.SP_Question_Delete, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public IEnumerable<Question> GetQuestion(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_Question_Id, id);
                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<Question>(Constants.SP_Question_GetById, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void UpdateQuestion(Question question)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_Question_Id, question.Id);
                    parameters.Add(Constants.P_Question_IdContent, question.IdContent);
                    parameters.Add(Constants.P_Question_Text,question.Text);
                    db.ExecuteScalar<Question>(Constants.SP_Page_Update, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
    }

