using System.Data;
using System.Data.SqlClient;

namespace SuperReaders.API.Helper
{
    public class DbAccess
    {
        private string connectionString;
        public DbAccess()
        {
            connectionString = @"Server=localhost;Database=ReadersDB;User Id=sa;password=eduardo326;Trusted_Connection=False;MultipleActiveResultSets=true;";
            //connectionString = @"Server=E-AAROJAS;Database=ReadersDB;Trusted_Connection=True;";
        }
        public IDbConnection Connection
        {
            get { return new SqlConnection(connectionString); }
        }
    }
}
