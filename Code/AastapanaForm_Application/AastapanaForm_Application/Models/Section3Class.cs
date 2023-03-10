using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace AastapanaForm_Application.Models
{
    public class Section3Class
    {
        
            public int Id { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Agree_Self_assess { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Work_Self_assess_Report { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string FailureInwork_Details { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Skill_upgra_Center { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Rating_On_Efficiency { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Work_Reporting_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Op_Reporting_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Accom_Reporting_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Avg_Grad_work_Reporting_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Work_Review_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Op_Review_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Accom_Review_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Avg_Grad_work_Review_Officer { get; set; }

            public string Sign_Work_Review_Offi { get; set; }

            public string Sign_Op_Review_Offi { get; set; }

            public string Sign_Accom_Review_Offi { get; set; }

            public string Sign_Avg_Review_Offi { get; set; }

            public string Atti_Work_Repo_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Sence_Respo_Repo_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Bearing_Person_Repo_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Emotional_Stability_Repo_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Commu_Skills_Repo_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string CapacityOf_Work_Repo_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Avg_Gradation_Person_Attri_Repo_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Atti_Work_Review_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Sence_Respo_Review_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Bearing_Person_Review_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Commu_Skills_Review_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string CapacityOf_Work_Review_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Avg_Gradation_Person_Attri_Review_Officer { get; set; }

            public string Sign_Atti_Work_Review_Officer { get; set; }
            public string Sign_Sence_Respo_Review_Officer { get; set; }
            public string Sign_Bearing_Person_Review_Officer { get; set; }
            public string Sign_Commu_Skills_Review_Officer { get; set; }
            public string Sign_CapacityOf_Work_Review_Officer { get; set; }
          
            public string Knowldge_Skill_Repo_Officer { get; set; }
            [Required(ErrorMessage = " User Id is required")]
            public string Strategic_Planning_Ability_Repo_Officer { get; set; }
            public string Decision_Ability_Repo_Officer { get; set; }
            public string Initiative_Repo_Officer { get; set; }
            public string Co_Ordinate_Agencies_Repo_Officer { get; set; }
            public string Avg_Grade_Work_Effi_Repo_Officer { get; set; }
            public string Knowldge_Skill_Review_Officer { get; set; }
            public string Strategic_Planning_Ability_Review_Officer { get; set; }
            public string Decision_Ability_Review_Officer { get; set; }
            public string Initiative_Review_Officer { get; set; }
            public string Co_Ordinate_Agencies_Review_Officer { get; set; }
            public string Avg_Grade_Work_Effi_Review_Officer { get; set; }
            public string Sign_Knowldge_Skill_Review_Officer { get; set; }
            public string Sign_Strategic_Planning_Ability_Review_Officer { get; set; }
            public string Sign_Decision_Ability_Review_Officer { get; set; }
            public string Sign_Initiative_Review_Officer { get; set; }
            public string Sign_Co_Ordinate_Agencies_Review_Officer_ { get; set; }
            public string Sign_Avg_Grade_Work_Effi_Review_Officer { get; set; }
            public string Remark_Character_Integrity { get; set; }
            public string Overall_Assessment_Officer { get; set; }
            public string Strength_atti_to_abnormal_person { get; set; }
            public string State_of_Mind { get; set; }
            public string Overall_Graduation { get; set; }
            public string Emotional_Stability_Review_Officer { get; set; }
            public string Sign_Emotional_Stability { get; set; }
            public string Sign_Avg_Gradation_Person_Attri { get; set; }
        }
    }

