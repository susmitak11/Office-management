﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace OfficeMgmt.Models
{
    public class DepartmentContext : DbContext//context used for department class
    {
        public DepartmentContext (DbContextOptions<DepartmentContext> options)
            : base(options)
        {
        }

        public DbSet<OfficeMgmt.Models.Department> Department { get; set; }
    }
}
