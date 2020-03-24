using SuperReaders.Models.Entities;
using System.Collections.Generic;

namespace SuperReaders.Services.DomainObject
{
    public interface IUserDomainObject
    {
        IEnumerable<User> GetUsers();
        IEnumerable<User> GetUser(int id);
        void AddUser(User user);
        void UpdateUser(User user);
        void DeleteUser(int user);
    }
}
