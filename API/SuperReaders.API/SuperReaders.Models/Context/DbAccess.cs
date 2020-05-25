using System.Data;
using System.Data.SqlClient;

namespace SuperReaders.API.Helper
{
    public class DbAccess
    {
        private string connectionString;
        public DbAccess()
        {
            //connectionString = @"Server=DESKTOP-1QNMLT8;Database=ReadersDB;Trusted_Connection=True;";
            connectionString = @"Server=tcp:lectores.database.windows.net,1433;Initial Catalog=lectores;Persist Security Info=False;User ID=lectores;Password=pw12345!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
        }
        public IDbConnection Connection
        {
            get { return new SqlConnection(connectionString); }
        }
    }
}
