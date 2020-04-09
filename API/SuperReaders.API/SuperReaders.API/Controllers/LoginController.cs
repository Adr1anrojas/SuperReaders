using System;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using SuperReaders.Contracts.Interfaces.IDomainObject;
using SuperReaders.Models.Entities;
using SuperReaders.Models.Models;

namespace SuperReaders.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        private ILoginDomainObject _iLoginDomainObject;
        public LoginController(ILoginDomainObject iLoginDomainObject)
        {
            _iLoginDomainObject = iLoginDomainObject;
        }
        // POST: api/Login
        /// <summary>
        /// This EndPoint return a User info and token if it have credentials valid.
        /// </summary>
        /// <param name="user">
        /// <returns>LoginResult</returns>
        [HttpPost]
        public ActionResult<LoginResult> Login([FromBody] LoginCredential user)
        {
            IEnumerable <LoginResult> result;
            try
                {
                result = _iLoginDomainObject.Login(user);   
                return Ok(result);
            }
            catch (Exception e)
            {
                return StatusCode(500, e.Message);
            }
        }

    }
}
