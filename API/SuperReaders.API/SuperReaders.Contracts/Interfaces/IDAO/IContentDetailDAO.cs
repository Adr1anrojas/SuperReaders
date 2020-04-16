using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDAO
{
    public interface IContentDetailDAO
    {
        /// <summary>
        /// This Method create an ContentDetail
        /// </summary>
        /// <param name="id">ContentDetail of Content to create</param>
        /// <returns></returns>
        void AddContentDetail(int id);
    }
}
