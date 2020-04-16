using Dapper;
using SuperReaders.API.Helper;
using SuperReaders.Contracts.Constants;
using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
namespace SuperReaders.Services.DAO
{
    public class MonitoringDAO : IMonitoringDAO
    {
        private DbAccess connection;
        public MonitoringDAO()
        {
            connection = new DbAccess();
        }
        /// <summary>|
        /// This EndPoint create an User of the role Specified
        /// </summary>
        /// <param name="user">user to create</param>
        /// <returns>status code 200</returns>
       /* public int AddMonitoring(Monitoring monitoring)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    string sql = @"INSERT INTO [StudentContent]([IdStudent],[IdContent],
		            [TimeReading],[CurrentPage],[DateStart],
		            [DateFinish],[IsFinish]) 
		            VALUES (@IdStudent,@IdContent,
		            @TimeReading,@CurrentPage,@DateStart,@DateFinish,@IsFinish);
		            SELECT CAST(SCOPE_IDENTITY() as int)";
                    var id = db.Query<int>(sql,
                        new
                        {
                            IdStudent = monitoring.IdStudent,
                            IdContent = monitoring.IdContent,
                            TimeReading = monitoring.TimeReading,
                            CurrentPage = monitoring.CurrentPage,
                            DateStart = monitoring.DateStart,
                            DateFinish = monitoring.DateFinish,
                            IsFinish = monitoring.IsFinish,
                     
                        }).Single();
                    return id;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }*/
        // <summary>
        /// This EndPoint update an User of the role Specified
        /// </summary>
        /// <param name="user">user to update</param>
        /// <returns>status code 200</returns>
        public void UpdateMonitoring(Monitoring monitoring)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_Monitoring_IdContent, monitoring.IdContent);
                    parameters.Add(Constants.P_Monitoring_IdStudent, monitoring.IdStudent);
                    parameters.Add(Constants.P_Monitoring_TimeReading, monitoring.TimeReading);
                    parameters.Add(Constants.P_Monitoring_CurrentPage, monitoring.CurrentPage);
                    parameters.Add(Constants.P_Monitoring_IsFinish, monitoring.IsFinish);
        
                    db.ExecuteScalar<Monitoring>(Constants.SP_Monitoring_Update, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
