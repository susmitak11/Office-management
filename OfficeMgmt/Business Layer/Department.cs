using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace OfficeMgmt.Models
{
    public class Department// class used
    {
        [Key]//primary key
        public int ID { get; set; }//this is the fields need to be filled
        public string Name { get; set; }
        public string Description { get; set; }
    }
}
