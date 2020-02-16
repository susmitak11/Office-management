using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using OfficeMgmt.Models;

namespace OfficeMgmt.Pages.AttendancePage
{
    public class IndexModel : PageModel
    {
        private readonly OfficeMgmt.Models.AttendanceContext _context;

        public IndexModel(OfficeMgmt.Models.AttendanceContext context)
        {
            _context = context;
        }

        public IList<Attendance> Attendance { get;set; }

        public async Task OnGetAsync()
        {
            Attendance = await _context.Attendance.ToListAsync();
        }
    }
}
