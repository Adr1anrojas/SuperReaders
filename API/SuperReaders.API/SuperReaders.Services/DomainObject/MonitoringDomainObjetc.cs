using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Contracts.Interfaces.IDomainObject;
using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Linq;

namespace SuperReaders.Services.DomainObject
{

    public class MonitoringDomainObjetc : IMonitoringDomainObject
    {
        private IMonitoringDAO _iMonitoringDAO;
        public MonitoringDomainObjetc(IMonitoringDAO iMonitoringDAO)
        {
            _iMonitoringDAO = iMonitoringDAO;
        
        }
        /// <summary>
        /// This EndPoint create an User of the role Specified
        /// </summary>
        /// <param name="user">user to create</param>
        /// <returns>status code 200</returns>
        /*public void AddMonitoring(Monitoring monitoring)
        {
            try
            {
                int result = _iMonitoringDAO.AddMonitoring(monitoring);
       
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
            try
            {
                _iMonitoringDAO.UpdateMonitoring(monitoring);
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
