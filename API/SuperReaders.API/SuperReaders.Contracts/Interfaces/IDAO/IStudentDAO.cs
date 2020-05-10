using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDAO
{
    public interface IStudentDAO
    {
        /// <summary>
        /// This Method create an User of the role Student
        /// </summary>
        /// <param name="id">ID user of Student to create</param>
        /// <returns></returns>
        int AddStudent(int id);
    }
}
