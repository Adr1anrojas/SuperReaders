using SuperReaders.Models.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace SuperReaders.Contracts.Interfaces.IDAO
{
    interface IStudentDAO
    {
        Task<IEnumerable<User>> GetAll();
    }
}
