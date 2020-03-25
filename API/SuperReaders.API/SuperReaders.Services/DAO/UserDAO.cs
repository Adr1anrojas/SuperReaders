using Dapper;
using SuperReaders.API.Helper;
using SuperReaders.Contracts.Constants;
using SuperReaders.Contracts.Interfaces.IDAO;
using SuperReaders.Models.Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;

namespace SuperReaders.Services.DAO
{
    public class UserDAO : IUserDAO
    {
        private DbAccess connection;
        public UserDAO()
        {
            connection = new DbAccess();
        }

        /// <summary>
        /// This EndPoint return all Users of the role Specified
        /// </summary>
        /// <param name="">
        /// <returns>Array of Users of the role Specified</returns>
        public IEnumerable<User> GetUsers(string role)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                parameters.Add(Constants.P_User_Role, role);
                using (IDbConnection db = connection.Connection)
                {
                    return db.Query<User>(Constants.SP_User_GetAll, parameters, commandType: CommandType.StoredProcedure);
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This EndPoint return an User by ID of the role Specified
        /// </summary>
        /// <param name="">
        /// <returns>An User of the role Specified</returns>
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

        /// <summary>
        /// This EndPoint return an User by ID of the role Specified
        /// </summary>
        /// <param name="">
        /// <returns>An User of the role Specified</returns>
        public int GetUserByUserName(string userName)
        {
            try
            {
                int id = 0;
                using (IDbConnection db = connection.Connection)
                {
                   
                    string sql = @" SELECT [Id] FROM[User] WHERE [UserName] = @UserName COLLATE SQL_Latin1_General_CP1_CI_AS";
                    id = db.Query<int>(sql,
                    new
                    {
                        UserName = userName
                    }).Count();
                    return id;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        /// <summary>
        /// This EndPoint create an User of the role Specified
        /// </summary>
        /// <param name="user">user to create</param>
        /// <returns>status code 200</returns>
        public int AddUser(User user)
        {
            DynamicParameters parameters = new DynamicParameters();
            try
            {
                using (IDbConnection db = connection.Connection)
                {
                    string sql = @"INSERT INTO [User]
		            ([FirstName], [LastName], [UserName], [Password], [Status], [Role], [BirthDate], [IdSchool])
		            VALUES (@FirstName, @LastName, @UserName, @Password, @Status, @Role, @BirthDate, @IdSchool);
		            SELECT CAST(SCOPE_IDENTITY() as int)";
                    var id = db.Query<int>(sql, 
                        new { 
                            FirstName = user.FirstName,
                            LastName = user.LastName,
                            UserName = user.UserName,
                            Password = user.Password,
                            Status = user.Status,
                            Role = user.Role,
                            BirthDate = user.BirthDate,
                            IdSchool = user.IdSchool
                        }).Single();
                    return id;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        // <summary>
        /// This EndPoint update an User of the role Specified
        /// </summary>
        /// <param name="user">user to update</param>
        /// <returns>status code 200</returns>
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
