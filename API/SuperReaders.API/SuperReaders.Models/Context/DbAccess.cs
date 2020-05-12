using System.Data;
using System.Data.SqlClient;

namespace SuperReaders.API.Helper
{
    public class DbAccess
    {
        private string connectionString;
        public DbAccess()
        {
            connectionString = @"Server=DESKTOP-G4SEHB2\SQLSERVER;Database=ReadersDB;Trusted_Connection=True;";
            //connectionString = @"Server = tcp:readers.database.windows.net,1433; Initial Catalog = ReadersDB; Persist Security Info = False; User ID = readers; Password = Lector123;";
        }
        public IDbConnection Connection
        {
            get { return new SqlConnection(connectionString); }
        }
    }
}
