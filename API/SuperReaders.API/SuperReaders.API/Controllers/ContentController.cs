using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SuperReaders.Contracts.Interfaces.IDomainObject;
using SuperReaders.Models.Entities;

namespace SuperReaders.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ContentController : ControllerBase
    {
        IContentDomainObject _iContentDomainObject;
        public ContentController(IContentDomainObject iContentDomainObject)
        {
            _iContentDomainObject = iContentDomainObject;
        }
        // GET: api/Content
        [HttpGet]
        public ActionResult<Content> Get()
        {
            try
            {
                return Ok(_iContentDomainObject.GetAllContents());
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }
        
      

        // GET: api/Content/5
        [HttpGet("{id}", Name = "Get")]
        public ActionResult<Content> GetContent(int id)
        {
            try
            {

                return Ok(_iContentDomainObject.GetContent(id));
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        // POST: api/Content
        [HttpPost]
        public IActionResult AddContent([FromBody] Content content,List<Page> pages,List<Question> questions,List<Answer> answers)
        {
            try
            {
                _iContentDomainObject.AddContent(content,pages,questions,answers);
                return Ok();
            }
            catch (Exception e)
            {
                if (e.Message.Equals("This Content already exists"))
                    return BadRequest(e.Message);
                return StatusCode(500, e.Message);
            }
        }

        // PUT: api/Content/5
        [HttpPut("{id}")]
        public IActionResult UpdateUser([FromBody] Content content)
        {
            try
            {
                _iContentDomainObject.UpdateContent(content);
                return Ok();
            }
            catch (Exception e)
            {
                if (e.Message.Equals("This Content already exists"))
                    return BadRequest(e.Message);
                return StatusCode(500, e.Message);
            }
        }


        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public IActionResult DeleteUser(int id)
        {
            try
            {
                _iContentDomainObject.DeleteContent(id);
                return Ok();
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

    }

}
