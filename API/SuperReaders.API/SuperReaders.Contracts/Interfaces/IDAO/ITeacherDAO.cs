using SuperReaders.Models;
using SuperReaders.Models.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDAO
{
    public interface ITeacherDAO
    {
        List<User> GetAllTeachers();
        User GetTeacherById(int id);
        User CreateTeacher(User teacher);
    }
}
