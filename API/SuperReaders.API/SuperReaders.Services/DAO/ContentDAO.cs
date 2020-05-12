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
    public class ContentDAO : IContentDAO
    {
        private DbAccess connection;
        public ContentDAO()
        {
            connection = new DbAccess();
        }

        public int AddContent(Content content)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    int result = 0;
                    parameters.Add(Constants.P_Content_Title, content.Title);
                    parameters.Add(Constants.P_Content_IdTypeContent, content.IdTypeContent);
                    result = db.Query<int>(Constants.SP_Content_Create, parameters, commandType: CommandType.StoredProcedure).First();
                    return result;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void DeleteContent(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_Content_Id, id);
                    db.ExecuteScalar<Content>(Constants.SP_Content_Delete, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public IEnumerable<Content> GetAllContents()
        {
            try
            {
               
                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<Content>(Constants.SP_Content_GetAllContents, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public Content GetContent(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_Content_Id, id);
                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<Content>(Constants.SP_Content_GetById, parameters, commandType: CommandType.StoredProcedure).First();
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public IEnumerable<TypeContent> GetTypeContent()
        {
            try
            {

                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<TypeContent>(Constants.SP_Content_GetAllTypeContent, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public int GetContentByContentName(string title)
        {
            try
            {
                int id = 0;
                using (IDbConnection db = connection.Connection)
                {

                    string sql = @" SELECT [Id] FROM[Content] WHERE [Title] = @Title COLLATE SQL_Latin1_General_CP1_CI_AS";
                    id = db.Query<int>(sql,
                    new
                    {
                        Title = title
                    }).Count();
                    return id;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void UpdateContent(Content content)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_Content_Id, content.Id);
                    parameters.Add(Constants.P_Content_Title, content.Title);
                    parameters.Add(Constants.P_Content_Status, content.Status);
                    db.ExecuteScalar<Content>(Constants.SP_Content_Update, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public void AddQuestionAnswer(int idQuestion, int idAnswer)
        {

            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_QuestionAnswer_IdQuestion, idQuestion);
                    parameters.Add(Constants.P_QuestionAnswer_IdAnswer, idAnswer);
                    db.ExecuteScalar<ContentDetail>(Constants.SP_QuestionAnswer_Create, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void AddContentDetail(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_ContentDetail_IdContent, id);
                    db.ExecuteScalar<ContentDetail>(Constants.SP_ContentDetail_Create, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This Method create an typeContent of the student specified
        /// </summary>
        /// <param name="typeContentStudent">typeContent to user</param>
        /// <returns></returns>
        public void AddTypeContentStudent(TypeContent typeContentStudent)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_User_StudentId, typeContentStudent.IdStudent);
                parameters.Add(Constants.P_User_TypeContentId, typeContentStudent.Id);
                using (IDbConnection db = connection.Connection)
                {
                    db.Query<TypeContent>(Constants.SP_User_StudentTypeContent, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This Method create an StudentContent of the student specified
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns></returns>
        public StudentContent AddContentStudent(StudentContent contentStudent)
        {
            StudentContent result = null;
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_Content_IdStudent, contentStudent.IdStudent);
                parameters.Add(Constants.P_Content_Id, contentStudent.IdContent);

                using (IDbConnection db = connection.Connection)
                {
                    result = db.Query<StudentContent>(Constants.SP_Content_CreateStudentContent, parameters, commandType: CommandType.StoredProcedure).First();
                }
                return result;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This Method Get an StudentContent by the idstudent and idContent specified
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns>A ContentStudent object</returns>
        public StudentContent GetContentStudent(StudentContent contentStudent)
        {
            StudentContent result = null;
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_Content_IdStudent, contentStudent.IdStudent);
                parameters.Add(Constants.P_Content_Id, contentStudent.IdContent);
                using (IDbConnection db = connection.Connection)
                {
                    result = db.Query<StudentContent>(Constants.SP_Content_GetStudentContent, parameters, commandType: CommandType.StoredProcedure).FirstOrDefault();
                }
                return result;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public StudentContent UpdateTimeReading(StudentContent contentStudent)
        {
            StudentContent result = null;
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_Content_Id, contentStudent.IdStudentContent);
                parameters.Add(Constants.P_Content_TimeReading, contentStudent.TimeReading);
                parameters.Add(Constants.P_Content_CurrentPage, contentStudent.CurrentPage);
                using (IDbConnection db = connection.Connection)
                {
                    result = db.Query<StudentContent>(Constants.SP_Content_UpdateTimeReading, parameters, commandType: CommandType.StoredProcedure).FirstOrDefault();
                }
                return result;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This Method update an StudentContent if the student finish the content
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns></returns>
        public StudentContent UpdateFinishContent(StudentContent contentStudent)
        {
            StudentContent result = null;
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_Content_Id, contentStudent.IdStudentContent);
                using (IDbConnection db = connection.Connection)
                {
                    result = db.Query<StudentContent>(Constants.SP_Content_UpdateFinishContent, parameters, commandType: CommandType.StoredProcedure).FirstOrDefault();
                }
                return result;
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This Method save the anwers of StudentContent
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns></returns>
        public void SaveAnswerStudent(StudentAnswer studentAnswer)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_Content_IdStudent, studentAnswer.IdStudent);
                parameters.Add(Constants.P_Content_IdAnswer, studentAnswer.IdAnswer);
                using (IDbConnection db = connection.Connection)
                {
                    db.Query<StudentAnswer>(Constants.SP_Content_SaveAnswerStudent, parameters, commandType: CommandType.StoredProcedure).FirstOrDefault();
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public IEnumerable<Content> GetContentByIdTypeContent(int idTypeContent)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_Content_IdTypeContent, idTypeContent);
                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<Content>(Constants.SP_Content_GetContentByIdTypeContent, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}

    
