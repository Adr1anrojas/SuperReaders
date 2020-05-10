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
    public class QuestionAnswerDAO : IQuestionAnswerDAO
    {
        private DbAccess connection;
        public void AddQuestionAnswer(int idQuestion,int idAnswer)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_QuestionAnswer_IdQuestion, idQuestion);
                    parameters.Add(Constants.P_QuestionAnswer_IdAnswer, idAnswer);
                    db.ExecuteScalar<QuestionAnswer>(Constants.SP_QuestionAnswer_Create, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
