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
                    string sql = @"INSERT INTO [Content]
		            ([Title], [IdTypeContent],[Status])
		            VALUES (@Title, @IdTypeContent,@Status);
		            SELECT CAST(SCOPE_IDENTITY() as int)";
                    var id = db.Query<int>(sql,
                        new
                        {
                            Title = content.Title,
                            IdTypeContent = content.IdTypeContent, 
                            Status = content.Status
                        }).Single();
                    return id;
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

  
           public IEnumerable<Content> GetContent(int id)
            {
                DynamicParameters parameters = new DynamicParameters();
                try
                {
                    parameters.Add(Constants.P_Content_Id, id);
                    using (IDbConnection db = connection.Connection)
                    {
                        return db.Query<Content>(Constants.SP_Content_GetById, parameters, commandType: CommandType.StoredProcedure);
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
    }
    }
