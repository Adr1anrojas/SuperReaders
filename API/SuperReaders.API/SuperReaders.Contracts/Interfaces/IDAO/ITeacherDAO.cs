using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDAO
{
    public interface ITeacherDAO
    {
        /// <summary>
        /// This Method create an User of the role Teacher
        /// </summary>
        /// <param name="id">ID of user Teacher to create</param>
        /// <returns></returns> 
        void AddTeacher(int id, int idClassRoom);
    }
}
