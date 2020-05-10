using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDAO
{
   public interface IStudentContentDAO
    {
        /// <summary>
        /// This Method create an StudentContent
        /// </summary>
        /// <param name="studentContent">studentContent Create</param>
        /// <returns></returns>
        public void AddStudentContent(StudentContent studentContent);

        /// <summary>
        /// This Method create an Question
        /// </summary>
        /// <param name="question">Question Create</param>
        /// <returns></returns>
        void UpdateStudentContent(StudentContent studentContent);
    }
}
