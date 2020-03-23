using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDomainObject
{
    public interface IStudentDomainObject
    {
        Task<IEnumerable<Student>> GetAllStudents();
    }
}
