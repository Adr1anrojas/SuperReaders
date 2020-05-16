using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Text;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using SuperReaders.Contracts.Interfaces.IDomainObject;
using SuperReaders.Models.DTO;
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
        public ActionResult<ContentDTO> GetContent(int id)
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

        // GET: api/Content/typeContent
        [HttpGet]
        [Route("typeContent")]
        [DisableRequestSizeLimit]
        public ActionResult<TypeContent> GetTypeContent()
        {
            try
            {
                return Ok(_iContentDomainObject.GetTypeContent());
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        // GET: api/Content/contentByTypeContent
        [HttpGet]
        [Route("contentByTypeContent")]
        [DisableRequestSizeLimit]
        public ActionResult<TypeContent> GetContentbyTypeContent()
        {
            try
            {
                return Ok(_iContentDomainObject.GetContentByTypeContent());
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        // POST: api/Content
        [HttpPost]
        [DisableRequestSizeLimit]
        public IActionResult AddContent([FromBody] ContentDTO content)
        {
            try
            {
                _iContentDomainObject.AddContent(content);
                return Ok();
            }
            catch (Exception e)
            {
                if (e.Message.Equals("This title content already exists"))
                    return BadRequest(e.Message);
                return StatusCode(500, e.Message);
            }
        } 

        // PUT: api/Content/5
        [HttpPut("{id}")]
        public IActionResult UpdateContent([FromBody] ContentDTO content)
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
        public IActionResult DeleteContent(int id)
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

        // POST: api/Content/typeContentStudent
        /// <summary>
        /// This EndPoint create an User of the role Specified
        /// </summary>
        /// <param name="user">user to create</param>
        /// <returns>status code 200</returns>
        [HttpPost]
        [Route("typeContentStudent")]
        public IActionResult AddTypeContentStudent([FromBody] List<TypeContent> typeContentStudent)
        {
            try
            {
                _iContentDomainObject.AddTypeContentStudent(typeContentStudent);
                return Ok();
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        /// api/Content/contentStudent
        /// <summary>
        /// This Method create an StudentContent of the student specified
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns></returns>
        [HttpPost]
        [Route("contentStudent")]
        public IActionResult AddContentStudent([FromBody] StudentContent contentStudent)
        {
            try
            {
                return Ok(_iContentDomainObject.AddContentStudent(contentStudent));
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        /// api/Content/UpdateTimeReading
        /// <summary>
        /// This Method update an StudentContent of the student specified
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("UpdateTimeReading")]
        public IActionResult UpdateTimeReading([FromBody] StudentContent contentStudent)
        {
            try
            {
                return Ok(_iContentDomainObject.UpdateTimeReading(contentStudent));
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        /// api/Content/finishContent
        /// <summary>
        /// This Method update an StudentContent if the student finish the content
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns></returns>
        [HttpPut]
        [Route("finishContent")]
        public IActionResult UpdateFinishContent([FromBody] StudentContent contentStudent)
        {
            try
            {
                return Ok(_iContentDomainObject.UpdateFinishContent(contentStudent));
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

        /// api/Content/contentStudent
        /// <summary>
        /// This Method save the anwers of StudentContent
        /// </summary>
        /// <param name="contentStudent"></param>
        /// <returns></returns>
        [HttpPost]
        [Route("saveAnswerStudent")]
        public IActionResult SaveAnswerStudent([FromBody] List<StudentAnswer> studentAnswers)
        {
            try
            {
                _iContentDomainObject.SaveAnswerStudent(studentAnswers);
                return Ok();
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

    }
}
