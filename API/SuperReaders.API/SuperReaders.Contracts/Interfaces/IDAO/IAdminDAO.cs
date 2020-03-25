using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDAO
{
    public interface IAdminDAO
    {
        /// <summary>
        /// This Method create an User of the role Admin
        /// </summary>
        /// <param name="id">ID user of Admin to create</param>
        /// <returns></returns>
        void AddAdmin(int id);
    }
}
