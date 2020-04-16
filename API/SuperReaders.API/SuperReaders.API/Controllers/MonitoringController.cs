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

        // POST: api/Monitoring
        /// <summary>
        /// This EndPoint create an User of the role Specified
        /// </summary>
        /// <param name="monitoring">user to create</param>
        /// <returns>status code 200</returns>
        /*[HttpPost]
        public IActionResult AddMonitoring([FromBody] Monitoring monitoring)
        {
            try
            {
                _iMonitoringDomainObject.AddMonitoring(monitoring);
                return Ok();
            }
            catch (Exception e)
            {
                if (e.Message.Equals("This user already exists"))
                    return BadRequest(e.Message);
                return StatusCode(500, e.Message);
            }
        }*/
        // PUT: api/User
        /// <summary>
        /// This EndPoint update an User of the role Specified
        /// </summary>
        /// <param name="monitoring">user to update</param>
        /// <returns>status code 200</returns>
        [HttpPut]
        public IActionResult UpdateMonitoring([FromBody] Monitoring monitoring)
        {
            try
            {
                _iMonitoringDomainObject.UpdateMonitoring(monitoring);
                return Ok();
            }
            catch (Exception e)
            {
                if (e.Message.Equals("This user already exists"))
                    return BadRequest(e.Message);
                return StatusCode(500, e.Message);
            }
        }
    }
}