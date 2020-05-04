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
    public class PageDAO : IPageDAO
    {
        private DbAccess connection;

        public PageDAO()
        {
            connection = new DbAccess();
        }

        public void AddPage(Page page)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_Page_Text, page.Text);
                    parameters.Add(Constants.P_Page_IdContent,page.IdContent);
                    db.Query<Page>(Constants.SP_Page_Create, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void DeletePage(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_Page_Id, id);
                    db.ExecuteScalar<Page>(Constants.SP_Page_Delete, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public IEnumerable<Page> GetPage(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_Page_Id, id);
                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<Page>(Constants.SP_Page_GetById, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void UpdatePage(Page page)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_Page_Id, page.Id);
                    parameters.Add(Constants.P_Page_Text, page.Text);
                    parameters.Add(Constants.P_Page_IdContent, page.IdContent);
                    db.ExecuteScalar<Page>(Constants.SP_Page_Update, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public List<Page> GetPagesByIdContent(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_Page_IdContent, id);
                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<Page>(Constants.SP_Page_GetByIdContent, parameters, commandType: CommandType.StoredProcedure).ToList();
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
