using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using SuperReaders.Contracts.Constants;
using SuperReaders.Contracts.Interfaces.IDomainObject;
using SuperReaders.Models;
using SuperReaders.Models.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace SuperReaders.API.Controllers
{
    [Route("api/[controller]")]
    public class TeacherController : Controller
    {
        private ITeacherDomainObject _iTeacherDomainObject;
        public TeacherController(IServiceProvider iServiceProvider, ITeacherDomainObject iTeacherDomainObject)
        {
            this._iTeacherDomainObject = iTeacherDomainObject;

        }
        // GET: api/<controller>
        [HttpGet]
        public ActionResult<List<User>> Get()
        {
            try
            {
                return this._iTeacherDomainObject.GetAllTeachers();
            }
            catch (Exception e)
            {
                return StatusCode(500);
            }
        }

        // GET api/<controller>/5
        [HttpGet("{id}")]
        public ActionResult<User> GetById(int id)
        {
            try
            {
                return this._iTeacherDomainObject.GetTeacherById(id);
            }
            catch (Exception e)
            {
                return StatusCode(500);
            }
        }

        // POST api/<controller>
        [HttpPost]
        //[Route(ControllerConstans.createTeacher)]
        public IActionResult Post([FromBody] User teacher)
        {
            try
            {
                return Ok(this._iTeacherDomainObject.CreateTeacher(teacher));
            }
            catch (Exception e)
            {
                throw;
            }
        }

        // PUT api/<controller>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
