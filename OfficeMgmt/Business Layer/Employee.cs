using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace OfficeMgmt.Models
{
    public class Employee// class used
    {
        [Key]// primary key used
        public int ID { get; set; }// field that need to be filled
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Gender { get; set; }
        public string Gmail { get; set; }
        public int Phone { get; set; }
        public string Address { get; set; }
        [ForeignKey("Employer")]// foreign key used
        public int Employer_ID { get; set; }
    }
}
