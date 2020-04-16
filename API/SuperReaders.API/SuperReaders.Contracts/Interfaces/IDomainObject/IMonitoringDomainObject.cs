using System;
using System.Collections.Generic;
using System.Text;
using SuperReaders.Models.Entities;

namespace SuperReaders.Contracts.Interfaces.IDomainObject
{
    public interface IMonitoringDomainObject
    {
        /// <summary>
        /// This Method return all Users of the role Specified and apply the business rules
        /// </summary>
        /// <param name="">
        /// <returns>Array of Users of the role Specified</returns>
       /* void AddMonitoring(Monitoring monitoring);*/

        /// <summary>
        /// This Method update an User of the role Specified and apply the business rules
        /// </summary>
        /// <param name="user">user to update</param>
        /// <returns>status code 200</returns>
        void UpdateMonitoring(Monitoring monitoring);
    }
}
