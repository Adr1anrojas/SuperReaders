using System;
using System.Collections.Generic;
using System.Text;
using SuperReaders.Models.Entities;

namespace SuperReaders.Contracts.Interfaces.IDomainObject
{
    public interface IMonitoringDomainObject
    {
        IEnumerable<MonitoringClassRoom> GetByMonitoringClassRoom(int id);

        /// <summary>
        /// This Method create an ClassRoom of Specified and Access the data
        /// </summary>
        /// <param name="classRoom">ClassRoom to create</param>
        /// <returns></returns>
        /// 
        IEnumerable<MonitoringStudent> GetByMonitoringStudent(int id);

        /// <summary>
        /// This Method create an ClassRoom of Specified and Access the data
        /// </summary>
        /// <param name="classRoom">ClassRoom to create</param>
        /// <returns></returns>
        /// 
        IEnumerable<MonitoringContentMoreRead> GetByContentMoreRead(int id);

        /// <summary>
        /// This Method create an ClassRoom of Specified and Access the data
        /// </summary>
        /// <param name="classRoom">ClassRoom to create</param>
        /// <returns></returns>
        /// 

    }
}
