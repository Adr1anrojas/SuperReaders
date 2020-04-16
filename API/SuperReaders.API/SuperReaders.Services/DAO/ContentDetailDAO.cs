

using Dapper;
using SuperReaders.API.Helper;
using SuperReaders.Contracts.Constants;
using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Models.Entities;
using System;
using System.Data;

namespace SuperReaders.Services.DAO
{
    public class ContentDetailDAO : IContentDetailDAO
    {
        private DbAccess connection;
      
        public void AddContentDetail(int id)
        {

            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_ContentDetail_IdContent,id);
                    db.ExecuteScalar<ContentDetail>(Constants.SP_ContentDetail_Create, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
    }

