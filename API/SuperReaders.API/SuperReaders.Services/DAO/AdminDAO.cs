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
    public class AdminDAO : IAdminDAO
    {
        private DbAccess connection;
        public AdminDAO()
        {
            connection = new DbAccess();
        }

        public void AddAdmin(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_Admin_UserId, id);
                    db.ExecuteScalar<User>(Constants.SP_Admin_Create, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

    }
}
