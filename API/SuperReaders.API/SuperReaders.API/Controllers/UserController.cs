using System;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SuperReaders.Contracts.Constants;
using SuperReaders.Contracts.Interfaces.IDomainObject;
using SuperReaders.Models.Entities;
using SuperReaders.Services.DomainObject;
using SuperReaders.Services.DAO;
using System.Collections.Generic;

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
        /// <summary>
        /// This EndPoint return all Users of the role Specified
        /// </summary>
        /// <param name="">
        /// <returns>Array of Users of the role Specified</returns>
        //[Authorize(Roles = Constants.Admin)]
        [HttpGet("all/{role}")]
        public ActionResult<User> Get(string role)
        {
            try
            {
                return Ok(_iUserDomainObject.GetUsers(role));
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        // GET: api/User
        /// <summary>
        /// This EndPoint return all Students
        /// </summary>
        /// <param name="">
        /// <returns>Array of Students</returns>
        /// 
        [HttpGet("GetStudents")]
        public ActionResult<User> GetStudents()
        {
            try
            {
                return Ok(_iUserDomainObject.GetStudents());
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        // GET: api/User
        /// <summary>
        /// This EndPoint return all Students
        /// </summary>
        /// <param name="">
        /// <returns>Array of Students</returns>
        /// 
        [HttpGet("GetStudentsByClassRoom/{idClassRoom}")]
        public ActionResult<User> GetStudentsByClassRoom(int idClassRoom)
        {
            try
            {
                return Ok(_iUserDomainObject.GetStudentsByClassRoom(idClassRoom));
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        // GET: api/User
        /// <summary>
        /// This EndPoint return all Admins
        /// </summary>
        /// <param name="">
        /// <returns>Array of Admins</returns>
        /// 
        [HttpGet("GetAdmins")]
        public ActionResult<User> GetAdmins()
        {
            try
            {
                return Ok(_iUserDomainObject.GetAdmins());
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }
         // GET: api/User
        /// <summary>
        /// This EndPoint return all Teachers
        /// </summary>
        /// <param name="">
        /// <returns>Array of Teachers</returns>
        /// 
        [HttpGet("GetTeachers")]
        public ActionResult<User> GetTeachers()
        {
            try
            {
                return Ok(_iUserDomainObject.GetTeachers());
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        // GET: api/User/id
        /// <summary>
        /// This EndPoint return an User by ID of the role Specified
        /// </summary>
        /// <param name="">
        /// <returns>An User of the role Specified</returns>
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
        /// <summary>
        /// This EndPoint create an User of the role Specified
        /// </summary>
        /// <param name="user">user to create</param>
        /// <returns>status code 200</returns>
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
                if (e.Message.Equals("This user already exists"))
                    return BadRequest(e.Message);
                return StatusCode(500, e.Message);
            }
        }

        // PUT: api/User
        /// <summary>
        /// This EndPoint update an User of the role Specified
        /// </summary>
        /// <param name="user">user to update</param>
        /// <returns>status code 200</returns>
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
                if (e.Message.Equals("This userName already exists"))
                    return BadRequest(e.Message);
                return StatusCode(500, e.Message);
            }
        }

        // DELETE: api/User
        /// <summary>
        /// This EndPoint update the status of an User of the role Specified
        /// </summary>
        /// <param name="user">user to change status</param>
        /// <returns>status code 200</returns>
        [HttpDelete("{id}/{role}")]
        public IActionResult DeleteUser(int id, string role)
        {
            try
            {
                _iUserDomainObject.DeleteUser(id, role);
                return Ok();
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }
    }
}