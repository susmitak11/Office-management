using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace OfficeMgmt.Models
{
    public class AttendanceContext : DbContext//context  used for attendance class
    {
        public AttendanceContext (DbContextOptions<AttendanceContext> options)
            : base(options)
        {
        }

        public DbSet<OfficeMgmt.Models.Attendance> Attendance { get; set; }
    }
}
