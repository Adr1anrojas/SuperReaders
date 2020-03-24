using System;
using Microsoft.AspNetCore.Mvc;
using SuperReaders.Models.Entities;
using SuperReaders.Services.DomainObject;

namespace SuperReaders.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        IUserDomainObject _iUserDomainObject;
        public UserController(IUserDomainObject iUserDomainObject)
        {
            _iUserDomainObject = iUserDomainObject;
        }

        // GET: api/User
        [HttpGet]
        public ActionResult<User> Get()
        {
            try
            {
                return Ok(_iUserDomainObject.GetUsers());
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        // GET: api/User
        [HttpGet("{id}")]
        public ActionResult<User> GetUser(int id)
        {
            try
            {
               
                return Ok(_iUserDomainObject.GetUser(id));
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        // POST: api/User
        [HttpPost]
        public IActionResult AddUser([FromBody] User user)
        {
            try
            {
                _iUserDomainObject.AddUser(user);
                return Ok();
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        // PUT: api/User
        [HttpPut]
        public IActionResult UpdateUser([FromBody] User user)
        {
            try
            {
                _iUserDomainObject.UpdateUser(user);
                return Ok();
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        // DELETE: api/User
        [HttpDelete("{id}")]
        public IActionResult DeleteUser(int id)
        {
            try
            {
                _iUserDomainObject.DeleteUser(id);
                return Ok();
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

    }
}