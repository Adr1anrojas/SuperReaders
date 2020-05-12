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

        public IEnumerable<MonitoringContentMoreRead> GetByContentMoreRead(int id)
        {
            throw new NotImplementedException();
        }
     
        public IEnumerable<MonitoringClassRoom> GetByMonitoringClassRoom(int id)
        {
            List<MonitoringClassRoom> monitoringClassRoomsFinal = new List<MonitoringClassRoom>();
            MonitoringClassRoom monitoringClassRoom = new MonitoringClassRoom();

            try
            {
            
                monitoringClassRoom.Student = new List<MonitoringClassRoomStudent>();
                monitoringClassRoom.Student=_iMonitoringDAO.GetByMonitoringClassRoomStudent(id);
                int count = monitoringClassRoom.Student.Count();
                int SumContentFinished = monitoringClassRoom.Student.Sum(x=> x.ContentFinished);
                decimal averageContentRead = 0;
                monitoringClassRoom.contentMoreReads = new List<MonitoringContentMoreRead>();
                monitoringClassRoom.contentMoreReads= _iMonitoringDAO.GetByContentMoreRead(id);
                if (count!=0)
                {
                    averageContentRead = (decimal)SumContentFinished / count;
                }
           
                monitoringClassRoom.averageContentRead = averageContentRead;
                monitoringClassRoomsFinal.Add(monitoringClassRoom);
                return monitoringClassRoomsFinal;

            }
            catch (Exception e)
            {
                throw e;
            }
        }
        public IEnumerable<MonitoringStudent> GetByMonitoringStudent(int id)
        {
   
            try
            {    
                return (_iMonitoringDAO.GetByMonitoringStudent(id));
         
            }
            catch (Exception e)
            {
                throw e;
            }
        }


    }
}
