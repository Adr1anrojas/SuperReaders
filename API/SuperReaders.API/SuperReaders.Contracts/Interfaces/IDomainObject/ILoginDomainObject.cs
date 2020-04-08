using SuperReaders.Models.Entities;
using SuperReaders.Models.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDomainObject
{
    public interface ILoginDomainObject
    {
        /// <summary>
        /// This Method return a User info and token if it have credentials valid.
        /// </summary>
        /// <param name="user">
        /// <returns>LoginResult</returns>
        IEnumerable<LoginResult> Login(LoginCredential user);
    }
}
