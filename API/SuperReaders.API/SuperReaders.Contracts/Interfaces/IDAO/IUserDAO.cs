using SuperReaders.Models.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Contracts.Interfaces.IDAO
{
    public interface IUserDAO
    {
        User CreateUser(User user);
    }
}
