using Microsoft.EntityFrameworkCore;

namespace SuperReaders.Models.Context
{
    public class SuperReadersContext : DbContext
    {
        public SuperReadersContext(DbContextOptions options) : base(options) { }
    }
}
