using SuperReaders.Models.Entities;
using System.Collections.Generic;


namespace SuperReaders.Contracts.Interfaces.IDAO
{
    public interface IUserDAO
    {
        IEnumerable<User> GetUsers();
        IEnumerable<User> GetUser(int id);
        void AddUser(User user);
        void UpdateUser(User user);
        void DeleteUser(int id);
    }
}
