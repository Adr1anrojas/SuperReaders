using System.Data;
using System.Data.SqlClient;

namespace SuperReaders.API.Helper
{
    public class DbAccess
    {
        private string connectionString;
        public DbAccess()
        {
            connectionString = @"Server = DESKTOP-83UF86H\SQLEXPRESS; Database = ReadersDB; Trusted_Connection = True; ";
        }
        public IDbConnection Connection
        {
            get { return new SqlConnection(connectionString); }
        }
    }
}
