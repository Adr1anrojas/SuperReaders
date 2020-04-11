using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDAO
{
    public interface IAnswerDAO
    {
        /// <summary>
        /// This Method create an Page
        /// </summary>
        /// <param name="page">Page Create</param>
        /// <returns></returns>
        int AddAnswer(Answer answer);

        /// <summary>
        /// This Method create an Question
        /// </summary>
        /// <param name="question">Question Create</param>
        /// <returns></returns>
        void UpdateAnswer(Answer page);

        /// <summary>
        /// This Method create an Question
        /// </summary>
        /// <param name="question">Question Create</param>
        /// <returns></returns>
        void DeleteAnswer(int id);

        /// <summary>
        /// This Method create an Question
        /// </summary>
        /// <param name="question">Question Create</param>
        /// <returns></returns>
        IEnumerable<Answer> GetAnswer(int id);
    }
}
