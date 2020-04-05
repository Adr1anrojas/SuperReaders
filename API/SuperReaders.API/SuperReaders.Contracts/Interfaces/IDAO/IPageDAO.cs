using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDAO
{
   public interface IPageDAO
    {
        /// <summary>
        /// This Method create an Page
        /// </summary>
        /// <param name="page">Page Create</param>
        /// <returns></returns>
        void AddPage(Page page);

        /// <summary>
        /// This Method create an Question
        /// </summary>
        /// <param name="question">Question Create</param>
        /// <returns></returns>
        void UpdatePage(Page page);
    }
}
