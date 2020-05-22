using System;
using Microsoft.AspNetCore.Mvc;
using SuperReaders.Contracts.Interfaces.IDomainObject;
using SuperReaders.Models.Entities;
using SuperReaders.Services.DomainObject;

namespace SuperReaders.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MonitoringController : ControllerBase
    {
        IMonitoringDomainObject _iMonitoringDomainObject;
        public MonitoringController(IMonitoringDomainObject iMonitoringDomainObject)
        {
            _iMonitoringDomainObject = iMonitoringDomainObject;
        }

        // GET: api/Monitoring/2
        [HttpGet("{id}")]
        public ActionResult<MonitoringClassRoom> GetByMonitoringClassRoom(int id)
        {
            try
            {

                return Ok(_iMonitoringDomainObject.GetByMonitoringClassRoom(id));
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }
        // GET: api/Monitoring/Student/1
        [HttpGet("Student/{id}")]
        public ActionResult<MonitoringStudent> GetByMonitoringStudent(int id)
        {
            try
            {

                return Ok(_iMonitoringDomainObject.GetByMonitoringStudent(id));
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }
    }
}