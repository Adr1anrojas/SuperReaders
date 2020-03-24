using Dapper;
using SuperReaders.API.Helper;
using SuperReaders.Contracts.Constants;
using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Data;

namespace SuperReaders.Services.DAO
{
    public class UserDAO : IUserDAO
    {
        private DbAccess connection;
        public UserDAO()
        {
            connection = new DbAccess();
        }

        public IEnumerable<User> GetUsers()
        {
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<User>(Constants.SP_User_GetAll);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public IEnumerable<User> GetUser(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_User_Id, id);
                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<User>(Constants.SP_User_GetById, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void AddUser(User user)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_User_FirstName, user.FirstName);
                    parameters.Add(Constants.P_User_LastName, user.LastName);
                    parameters.Add(Constants.P_User_UserName, user.UserName);
                    parameters.Add(Constants.P_User_Password, user.Password);
                    parameters.Add(Constants.P_User_Status, user.Status);
                    parameters.Add(Constants.P_User_Role, user.Role);
                    parameters.Add(Constants.P_User_BirthDate, user.BirthDate);
                    parameters.Add(Constants.P_User_IdSchool, user.IdSchool);
                    db.ExecuteScalar<User>(Constants.SP_User_Create, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void UpdateUser(User user)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_User_Id, user.Id);
                    parameters.Add(Constants.P_User_FirstName, user.FirstName);
                    parameters.Add(Constants.P_User_LastName, user.LastName);
                    parameters.Add(Constants.P_User_UserName, user.UserName);
                    parameters.Add(Constants.P_User_Status, user.Status);
                    parameters.Add(Constants.P_User_BirthDate, user.BirthDate);
                    db.ExecuteScalar<User>(Constants.SP_User_Update, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public void DeleteUser(int id)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    parameters.Add(Constants.P_User_Id, id);
                    db.ExecuteScalar<User>(Constants.SP_User_Delete, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
    }
}
