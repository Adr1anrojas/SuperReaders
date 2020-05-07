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
        int AddQuestion(Question question);

        /// <summary>
        /// This Method create an Question
        /// </summary>
        /// <param name="question">Question Create</param>
        /// <returns></returns>
        void UpdateQuestion(Question question);

        /// <summary>
        /// This Method eliminate an Question
        /// </summary>
        /// <param name="question">Question Create</param>
        /// <returns></returns>
        void DeleteQuestion(int id);
        /// <summary>
        /// This Method create an Question
        /// </summary>
        /// <param name="question">Question Create</param>
        /// <returns></returns>
        /// 
        IEnumerable<Question> GetQuestion(int id);

        List<Question> GetQuestionByIdContent(int idContent);
    }
}
