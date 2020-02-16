using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace OfficeMgmt.Models
{
    public class Employer
    {
        [Key]
        public int ID { get; set; }
        public string CompanyName { get; set; }
        public string EmployerName { get; set; }
        public string Gmail { get; set; }
        public int Phone { get; set; }
    }
}
