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

        public IEnumerable<MonitoringClassRoom> GetByMonitoringClassRoom(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<MonitoringClassRoomStudent> GetByMonitoringClassRoomStudent(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_Monitoring_pIdClassRoom, id);
                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<MonitoringClassRoomStudent>(Constants.SP_Monitoring_GetByClassRoom, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public IEnumerable<MonitoringStudent> GetByMonitoringStudent(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_Monitoring_pIdStudent, id);
                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<MonitoringStudent>(Constants.SP_Monitoring_GetByStudent, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public IEnumerable<MonitoringContentMoreRead> GetByContentMoreRead(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_Monitoring_pIdClassRoom, id);
                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<MonitoringContentMoreRead>(Constants.SP_Monitoring_GetByContentMoreReading, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
