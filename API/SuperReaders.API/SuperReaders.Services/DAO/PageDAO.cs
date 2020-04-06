﻿using Dapper;
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
    public class PageDAO : IPageDAO
    {
        private DbAccess connection;
        public void AddPage(Page page)
         
            {
                DynamicParameters parameters = new DynamicParameters();
                try
                {
                    using (IDbConnection db = connection.Connection)
                    {
                    parameters.Add(Constants.P_Page_Text, page.Text);
                    parameters.Add(Constants.P_Page_IdContent,page.IdContent);
                      
                    db.ExecuteScalar<Page>(Constants.SP_Page_Create, parameters, commandType: CommandType.StoredProcedure);
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
    }
}