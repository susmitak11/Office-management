using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using OfficeMgmt.Models;

namespace OfficeMgmt.Pages.EmployerPage
{
    public class DetailsModel : PageModel
    {
        private readonly OfficeMgmt.Models.EmployerContext _context;

        public DetailsModel(OfficeMgmt.Models.EmployerContext context)
        {
            _context = context;
        }

        public Employer Employer { get; set; }

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Employer = await _context.Employer.FirstOrDefaultAsync(m => m.ID == id);

            if (Employer == null)
            {
                return NotFound();
            }
            return Page();
        }
    }
}
