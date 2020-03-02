using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace OfficeMgmt.Models
{
    public class EmployeeContext : DbContext//context used for employee class
    {
        public EmployeeContext (DbContextOptions<EmployeeContext> options)
            : base(options)
        {
        }

        public DbSet<OfficeMgmt.Models.Employee> Employee { get; set; }
    }
}
