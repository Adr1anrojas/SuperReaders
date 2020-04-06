using System;
using Microsoft.AspNetCore.Mvc;
using SuperReaders.Contracts.Interfaces.IDomainObject;
using SuperReaders.Models.Entities;
using SuperReaders.Services.DomainObject;
namespace SuperReaders.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ClassRoomController : ControllerBase
    {
        IClassRoomDomainObject _iClassRoomDomainObject;
        public ClassRoomController(IClassRoomDomainObject iClassRoomDomainObject)
        {
            _iClassRoomDomainObject = iClassRoomDomainObject;
        }

        // GET: api/ClassRoom
        /// <summary>
        /// This EndPoint return all ClassRooms
        /// </summary>
        /// <param name="">
        /// <returns>Array of ClassRooms</returns>
        [HttpGet("all")]
        public ActionResult<ClassRoom> Get()
        {
            try
            {
                return Ok(_iClassRoomDomainObject.GetClassRooms());
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        // GET: api/ClassRoom/id
        /// <summary>
        /// This EndPoint return an ClassRoom by ID 
        /// </summary>
        /// <param name="">
        /// <returns>An ClassRoom of the ID Specified</returns>
        [HttpGet("{id}")]
        public ActionResult<ClassRoom> GetClassRoom(int id)
        {
            try
            {
                return Ok(_iClassRoomDomainObject.GetClassRoom(id));
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        // GET: api/ClassRoom/id
        /// <summary>
        /// This EndPoint return an ClassRoom by Teacher 
        /// </summary>
        /// <param name="">
        /// <returns>An ClassRoom of the Teacher Specified</returns>
        [HttpGet("byTeacher/{idTeacher}")]
        public ActionResult<ClassRoom> GetClassRoomByIdTeacher(int idTeacher)
        {
            try
            {
                return Ok(_iClassRoomDomainObject.GetClassRoomByIdTeacher(idTeacher));
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        // POST: api/ClassRoom
        /// <summary>
        /// This EndPoint create an ClassRoom of 
        /// </summary>
        /// <param name="ClassRoom">ClassRoom to create</param>
        /// <returns>status code 200</returns>
        [HttpPost]
        public IActionResult AddClassRoom([FromBody] ClassRoom classRoom)
        {
            try
            {
                _iClassRoomDomainObject.AddClassRoom(classRoom);
                return Ok();
            }
            catch (Exception e)
            {
                if (e.Message.Equals("This classRoom already exists"))
                    return BadRequest(e.Message);
                return StatusCode(500, e.Message);
            }
        }

        // PUT: api/ClassRoom
        /// <summary>
        /// This EndPoint update an ClassRoom 
        /// </summary>
        /// <param name="classRoom">ClassRoom to update</param>
        /// <returns>status code 200</returns>
        [HttpPut]
        public IActionResult UpdateClassRoom([FromBody] ClassRoom classRoom)
        {
            try
            {
                _iClassRoomDomainObject.UpdateClassRoom(classRoom);
                return Ok();
            }
            catch (Exception e)
            {
                if (e.Message.Equals("This classRoom already exists"))
                    return BadRequest(e.Message);
                return StatusCode(500, e.Message);
            }
        }

        // DELETE: api/ClassRoom
        /// <summary>
        /// This EndPoint update the status of an ClassRoom
        /// </summary>
        /// <param name="ClassRoom">ClassRoom to change status</param>
        /// <returns>status code 200</returns>
        [HttpDelete("{id}")]
        public IActionResult DeleteClassRoom(int id)
        {
            try
            {
                _iClassRoomDomainObject.DeleteClassRoom(id);
                return Ok();
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

    }
}