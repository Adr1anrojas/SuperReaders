using Dapper;
using Microsoft.Data.SqlClient;
using SuperReaders.API.Helper;
using SuperReaders.Models.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace SuperReaders.Services.DAO
{
    public class StudentDAO
    {
        private readonly ConnectionString _connectionString;
        public StudentDAO(ConnectionString connectionString)
        {
            _connectionString = connectionString;
        }
        public async Task<IEnumerable<User>> GetAllStudents()
        {
            try
            {
                const string query = @"SELECT m.Id, m.Name,d.Name AS DirectorName, m.ReleaseYear  
                                FROM Movies m  
                                INNER JOIN Directors d  
                                ON m.DirectorId = d.Id";

                using (var conn = new SqlConnection(_connectionString.Value))
                {
                    var result = await conn.QueryAsync<User>(query);
                    return result;
                }
            }
            catch (Exception e){
                throw;
            }
        }
    }

}
