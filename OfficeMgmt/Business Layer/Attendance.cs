using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace OfficeMgmt.Models
{
    public class Attendance //this is the class 
    {
        [Key]// primary key
        public int ID { get; set; }// this are the fields in the project
        [ForeignKey("Employee")]
        public int Employee_ID { get; set; }
        [ForeignKey("Employer")]
        public int Employer_ID { get; set; }
        [ForeignKey("Department")]//foreign key
        public int Department_ID { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
    }
}
