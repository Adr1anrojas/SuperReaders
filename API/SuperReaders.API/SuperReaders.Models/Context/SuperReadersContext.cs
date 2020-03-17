using Microsoft.EntityFrameworkCore;
using SuperReaders.Models.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace SuperReaders.Models.Context
{
    public class SuperReadersContext : DbContext
    {
        public SuperReadersContext(DbContextOptions<SuperReadersContext> options) : base(options){}

        public DbSet<Teacher> Teacher { get; set; }
        public DbSet<User> User { get; set; }
    
    }
}
