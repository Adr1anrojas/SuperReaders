using Microsoft.EntityFrameworkCore;
using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Models.Context;
using SuperReaders.Models.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Services.DAO
{
    public class UserDAO : IUserDAO
    {
        private readonly SuperReadersContext context;

        public UserDAO(SuperReadersContext context)
        {
            this.context = context;
        }

        public User CreateUser(User user)
        {
            try
            {
                var result = context.Set<User>()
                    .FromSqlRaw("dbo.CreateUser " +
                    "@Firstname = {0}, @LastName = {1}, @UserName = {2}, @Role = {3}, @Password = {4}, @BirthDate = {5}, @IdSchool = {6}, @Status = {7}",
                    user.FirstName, user.LastName, user.UserName, user.Role, user.Password, user.BirthDate, user.IdSchool, user.Status).ToListAsync();

                return result.Result[0];
            }
            catch (Exception e)
            {
                throw;
            }
        }
    }
}
