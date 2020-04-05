using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDAO
{
   public interface IQuestionDAO
    {
        /// <summary>
        /// This Method create an Question
        /// </summary>
        /// <param name="question">Question Create</param>
        /// <returns></returns>
        void AddQuestion(Question question);

        /// <summary>
        /// This Method create an Question
        /// </summary>
        /// <param name="question">Question Create</param>
        /// <returns></returns>
        void UpdateQuestion(Question question);
    }
}
