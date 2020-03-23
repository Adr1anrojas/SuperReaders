using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Contracts.Interfaces.IDomainObject;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace SuperReaders.Services.DomainObject
{
    public class StudentDomainObject : IStudentDomainObject
    {
        IStudentDomainObject _iStudentDAO;
        IUserDAO _iUserDAO;
        public Task<IEnumerable<Student>> GetAllStudents()
        {
            throw new NotImplementedException();
        }
    }
}
