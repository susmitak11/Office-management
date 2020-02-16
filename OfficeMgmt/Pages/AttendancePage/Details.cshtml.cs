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
    public class DetailsModel : PageModel
    {
        private readonly OfficeMgmt.Models.AttendanceContext _context;

        public DetailsModel(OfficeMgmt.Models.AttendanceContext context)
        {
            _context = context;
        }

        public Attendance Attendance { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Attendance = await _context.Attendance.FirstOrDefaultAsync(m => m.ID == id);

            if (Attendance == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
