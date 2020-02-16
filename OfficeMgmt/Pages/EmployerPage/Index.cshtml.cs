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
    public class IndexModel : PageModel
    {
        private readonly OfficeMgmt.Models.EmployerContext _context;

        public IndexModel(OfficeMgmt.Models.EmployerContext context)
        {
            _context = context;
        }

        public IList<Employer> Employer { get;set; }

        public async Task OnGetAsync()
        {
            Employer = await _context.Employer.ToListAsync();
        }
    }
}
