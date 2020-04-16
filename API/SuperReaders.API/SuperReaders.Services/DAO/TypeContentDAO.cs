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
    public class TypeContentDAO : ITypeContentDAO
    {
        private DbAccess connection;
        public void AddTypeContent(string nombre)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_TypeContent_Nombre, nombre);
                    db.ExecuteScalar<TypeContent>(Constants.SP_TypeContent_Create, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void UpdateTypeContent(TypeContent typeContent)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_TypeContent_Id,typeContent.Id );
                    parameters.Add(Constants.P_TypeContent_Nombre,typeContent.Nombre);
                    db.ExecuteScalar<TypeContent>(Constants.SP_TypeContent_Update, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }      
}
