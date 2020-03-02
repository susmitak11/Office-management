using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace OfficeMgmt.Models
{
    public class EmployerContext : DbContext//context used for employer class
    {
        public EmployerContext (DbContextOptions<EmployerContext> options)
            : base(options)
        {
        }

        public DbSet<OfficeMgmt.Models.Employer> Employer { get; set; }
    }
}
