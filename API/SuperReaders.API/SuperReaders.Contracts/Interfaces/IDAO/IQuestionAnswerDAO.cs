using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDAO
{
   public interface IQuestionAnswerDAO
    {
        /// <summary>
        /// This Method create an Page
        /// </summary>
        /// <param name="questionAnswer">Page Create</param>
        /// <returns></returns>
        void AddQuestionAnswer(int idQuestion,int idAnswer);
    }
}
