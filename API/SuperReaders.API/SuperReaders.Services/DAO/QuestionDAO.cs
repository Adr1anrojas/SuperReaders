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
    public class QuestionDAO :IQuestionDAO
    {
        private DbAccess connection;
        public void AddQuestion(Question question)

        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_Question_IdContent, question.IdContent);
                    parameters.Add(Constants.P_Question_Text, question.Text);
                    db.ExecuteScalar<Question>(Constants.SP_Question_Create, parameters, commandType: CommandType.StoredProcedure);
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

