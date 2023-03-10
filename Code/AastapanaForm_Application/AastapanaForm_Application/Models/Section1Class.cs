using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace AastapanaForm_Application.Models
{
    public class Section1Class
    {
        
            public int Id { get; set; }
            [Required(ErrorMessage = "  required")]
            public string Employee_Name { get; set; }
            [Required(ErrorMessage = " required")]
            public string Cadre { get; set; }
            [Required(ErrorMessage = "  required")]

            public string Date_Of_Birth { get; set; }
            [Required(ErrorMessage = "  required")]
            public string Present_Post { get; set; }
            [Required(ErrorMessage = "  required")]
            public Nullable<System.DateTime> Appointment_Date { get; set; }
            [Required(ErrorMessage = "  required")]
            public string Department { get; set; }
            [Required(ErrorMessage = "  required")]
            public string ReportingOfficerName { get; set; }
            [Required(ErrorMessage = "  required")]
            public string ReportingOfficerDesign { get; set; }
            [Required(ErrorMessage = "  required")]
            public string ReportingOfficerPeriod { get; set; }
            [Required(ErrorMessage = "  required")]
            public Nullable<System.DateTime> From { get; set; }
            [Required(ErrorMessage = "  required")]
            public Nullable<System.DateTime> To { get; set; }
            public string ReviewingOfficerName { get; set; }
            [Required(ErrorMessage = "  required")]
            public string ReviewingOfficerDesign { get; set; }
            [Required(ErrorMessage = "  required")]
            public string ReviewingOfficerPeriod { get; set; }
            [Required(ErrorMessage = "  required")]
            public string LeavePeriod { get; set; }
            [Required(ErrorMessage = "  required")]
            public string LeaveType { get; set; }
            [Required(ErrorMessage = "  required")]
            public string LeaveRemark { get; set; }
            public string UnAuthAbsencePeriod { get; set; }
            public string UnAuthAbsenceType { get; set; }
            public string UnAuthAbsenceRemark { get; set; }
            public Nullable<System.DateTime> TrainingFrom { get; set; }
            public Nullable<System.DateTime> TrainingTo { get; set; }
            public string TrainingInstitute { get; set; }
            public string TrainingSubject { get; set; }
            public Nullable<System.DateTime> DateOfFillingAssets { get; set; }
            public string Login_ID { get; set; }
       
    }
}