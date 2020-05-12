using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDAO
{
    public interface IMonitoringDAO
    {
        IEnumerable<MonitoringClassRoomStudent> GetByMonitoringClassRoomStudent(int id);

        /// <summary>
        /// This Method create an ClassRoom of Specified and Access the data
        /// </summary>
        /// <param name="classRoom">ClassRoom to create</param>
        /// <returns></returns>
        /// 
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
