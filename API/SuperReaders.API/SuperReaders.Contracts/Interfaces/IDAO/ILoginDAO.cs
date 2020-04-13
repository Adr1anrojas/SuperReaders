using SuperReaders.Models.Entities;
using SuperReaders.Models.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDAO
{
    public interface ILoginDAO
    {
        /// <summary>
        /// This Method return a info of an user if have a valid credentials.
        /// </summary>
        /// <param name="user">
        /// <returns>int</returns>
        IEnumerable<LoginResult> Login(LoginCredential user);
    }
}
