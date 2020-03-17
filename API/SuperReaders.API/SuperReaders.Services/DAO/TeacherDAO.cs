
using Microsoft.EntityFrameworkCore;
using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Models;
using SuperReaders.Models.Context;
using SuperReaders.Models.Models;
using System;
using System.Collections.Generic;
using System.Linq;

namespace SuperReaders.Services.DAO
{
    public class TeacherDAO : ITeacherDAO
    {
        private readonly SuperReadersContext context;

        public TeacherDAO(SuperReadersContext context)
        {
            this.context = context;
        }

        public List<User> GetAllTeachers()
        {
            try
            {
                var teachers = context.User.FromSqlRaw("dbo.GetAllTeacher").ToList();
                return teachers;
            }
            catch (Exception e)
            {
                throw;
            }
        }

        public User GetTeacherById(int id)
        {
            User teacher;
            try
            {
                var result = context.User.FromSqlRaw("dbo.GetTeacherById @Id = {0}", id).ToList();
                if (result.Count > 0)
                {
                    teacher = result[0];
                    return teacher;
                }
                return null;
            }
            catch (Exception e)
            {
                throw;
            }
        }
        public User CreateTeacher(User teacher)
        {
            var user = teacher;
            var result = context.User.Add(teacher);
            return result.Entity;
        }
    }
}
    