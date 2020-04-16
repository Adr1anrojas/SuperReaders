using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDAO
{
    public interface IMonitoringDAO
    {
        /// <summary>
        /// This Method create an User of the role Teacher
        /// </summary>
        /// <param name="id">ID of user Teacher to create</param>
        /// <returns></returns>
        /*int AddMonitoring(Monitoring monitoring);*/


        /// <summary>
        /// This Method update an User of the role Specified and Access the data
        /// </summary>
        /// <param name="user">user to update</param>
        /// <returns></returns>
        void UpdateMonitoring(Monitoring monitoring);
    }
}
