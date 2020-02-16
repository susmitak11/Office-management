using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using OfficeMgmt.Models;

namespace OfficeMgmt.Pages.EmployeePage
{
    public class IndexModel : PageModel
    {
        private readonly OfficeMgmt.Models.EmployeeContext _context;

        public IndexModel(OfficeMgmt.Models.EmployeeContext context)
        {
            _context = context;
        }

        public IList<Employee> Employee { get;set; }

        public async Task OnGetAsync()
        {
            Employee = await _context.Employee.ToListAsync();
        }
    }
}
