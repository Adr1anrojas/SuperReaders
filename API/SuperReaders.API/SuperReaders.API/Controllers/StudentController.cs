using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SuperReaders.Contracts.Interfaces.IDomainObject;

namespace SuperReaders.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentController : ControllerBase
    {
        private IStudentDomainObject  _iStudentDomainObject;
        public StudentController(IServiceProvider iServiceProvider, IStudentDomainObject iStudentDomainObject)
        {
            this._iStudentDomainObject = iStudentDomainObject;

        }
        // GET: api/<controller>
        [HttpGet]
        public ActionResult<List<Student>> Get()
        {
            try
            {
                return this._iStudentDomainObject.GetAllStudents();
            }
            catch (Exception e)
            {
                return StatusCode(500);
            }
        }

        // GET api/<controller>/5
        [HttpGet("{id}")]
        public ActionResult<Student> GetById(int id)
        {
            try
            {
                return this._iStudentDomainObject.GetTeacherById(id);
            }
            catch (Exception e)
            {
                return StatusCode(500);
            }
        }

        // POST api/<controller>
        [HttpPost]
        //[Route(ControllerConstans.createTeacher)]
        public IActionResult Post([FromBody] Student teacher)
        {
            try
            {
                return Ok(this._iStudentDomainObject.CreateTeacher(teacher));
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