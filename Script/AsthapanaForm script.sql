USE [master]
GO
/****** Object:  Database [Db_Asthapana]    Script Date: 23-02-2023 11:41:25 ******/
CREATE DATABASE [Db_Asthapana]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Db_Asthapana', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Db_Asthapana.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Db_Asthapana_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Db_Asthapana_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Db_Asthapana] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Db_Asthapana].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Db_Asthapana] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Db_Asthapana] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Db_Asthapana] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Db_Asthapana] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Db_Asthapana] SET ARITHABORT OFF 
GO
ALTER DATABASE [Db_Asthapana] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Db_Asthapana] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Db_Asthapana] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Db_Asthapana] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Db_Asthapana] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Db_Asthapana] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Db_Asthapana] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Db_Asthapana] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Db_Asthapana] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Db_Asthapana] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Db_Asthapana] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Db_Asthapana] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Db_Asthapana] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Db_Asthapana] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Db_Asthapana] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Db_Asthapana] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Db_Asthapana] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Db_Asthapana] SET RECOVERY FULL 
GO
ALTER DATABASE [Db_Asthapana] SET  MULTI_USER 
GO
ALTER DATABASE [Db_Asthapana] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Db_Asthapana] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Db_Asthapana] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Db_Asthapana] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Db_Asthapana] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Db_Asthapana] SET QUERY_STORE = OFF
GO
USE [Db_Asthapana]
GO
/****** Object:  Table [dbo].[Tbl_Login]    Script Date: 23-02-2023 11:41:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NULL,
	[Login_ID] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Confirm_Password] [nvarchar](max) NULL,
	[Department] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tbl_Login] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Section]    Script Date: 23-02-2023 11:41:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Section](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login_ID] [nvarchar](max) NULL,
	[Employee_Name] [nvarchar](max) NULL,
	[Cadre] [nvarchar](max) NULL,
	[Date_Of_Birth] [nvarchar](max) NULL,
	[Present_Post] [nvarchar](max) NULL,
	[Appointment_Date] [date] NULL,
	[Department] [nvarchar](max) NULL,
	[ReportingOfficerName] [nvarchar](max) NULL,
	[ReportingOfficerDesign] [nvarchar](max) NULL,
	[ReportingOfficerPeriod] [nvarchar](max) NULL,
	[ReviewingOfficerName] [nvarchar](max) NULL,
	[ReviewingOfficerDesign] [nvarchar](max) NULL,
	[ReviewingOfficerPeriod] [nvarchar](max) NULL,
	[LeavePeriod] [nvarchar](max) NULL,
	[LeaveType] [nvarchar](max) NULL,
	[LeaveRemark] [nvarchar](max) NULL,
	[UnAuthAbsencePeriod] [nvarchar](max) NULL,
	[UnAuthAbsenceType] [nvarchar](max) NULL,
	[UnAuthAbsenceRemark] [nvarchar](max) NULL,
	[TrainingFrom] [date] NULL,
	[TrainingTo] [date] NULL,
	[TrainingInstitute] [nvarchar](max) NULL,
	[TrainingSubject] [nvarchar](max) NULL,
	[DateOfFillingAssets] [date] NULL,
	[From] [date] NULL,
	[To] [date] NULL,
	[TaskDuringPost] [nvarchar](max) NULL,
	[AllocatedTask] [nvarchar](max) NULL,
	[WorksInWork] [nvarchar](max) NULL,
	[Diffi_In_Targets] [nvarchar](max) NULL,
	[Area_Requi_Train] [nvarchar](max) NULL,
	[Asset_Submit_Status] [nvarchar](max) NULL,
	[Agree_Self_assess] [nvarchar](max) NULL,
	[Work_Self_assess_Report] [nvarchar](max) NULL,
	[FailureInwork_Details] [nvarchar](max) NULL,
	[Skill_upgra_Center] [nvarchar](max) NULL,
	[Rating_On_Efficiency] [nvarchar](max) NULL,
	[Work_Reporting_Officer] [nvarchar](max) NULL,
	[Op_Reporting_Officer] [nvarchar](max) NULL,
	[Accom_Reporting_Officer] [nvarchar](max) NULL,
	[Avg_Grad_work_Reporting_Officer] [nvarchar](max) NULL,
	[Work_Review_Officer] [nvarchar](max) NULL,
	[Op_Review_Officer] [nvarchar](max) NULL,
	[Accom_Review_Officer] [nvarchar](max) NULL,
	[Avg_Grad_work_Review_Officer] [nvarchar](max) NULL,
	[Atti_Work_Repo_Officer] [nvarchar](max) NULL,
	[Sence_Respo_Repo_Officer] [nvarchar](max) NULL,
	[Bearing_Person_Repo_Officer] [nvarchar](max) NULL,
	[Emotional_Stability_Repo_Officer] [nvarchar](max) NULL,
	[Commu_Skills_Repo_Officer] [nvarchar](max) NULL,
	[CapacityOf_Work_Repo_Officer] [nvarchar](max) NULL,
	[Avg_Gradation_Person_Attri_Repo_Officer] [nvarchar](max) NULL,
	[Atti_Work_Review_Officer] [nvarchar](max) NULL,
	[Sence_Respo_Review_Officer] [nvarchar](max) NULL,
	[Bearing_Person_Review_Officer] [nvarchar](max) NULL,
	[Emotional_Stability_Review_Officer] [nvarchar](max) NULL,
	[Commu_Skills_Review_Officer] [nvarchar](max) NULL,
	[CapacityOf_Work_Review_Officer] [nvarchar](max) NULL,
	[Avg_Gradation_Person_Attri_Review_Officer] [nvarchar](max) NULL,
	[Knowldge_Skill_Repo_Officer] [nvarchar](max) NULL,
	[Strategic_Planning_Ability_Repo_Officer] [nvarchar](max) NULL,
	[Decision_Ability_Repo_Officer] [nvarchar](max) NULL,
	[Initiative_Repo_Officer] [nvarchar](max) NULL,
	[Co-Ordinate_Agencies_Repo_Officer] [nvarchar](max) NULL,
	[Avg_Grade_Work_Effi_Repo_Officer] [nvarchar](max) NULL,
	[Knowldge_Skill_Review_Officer] [nvarchar](max) NULL,
	[Strategic_Planning_Ability_Review_Officer] [nvarchar](max) NULL,
	[Decision_Ability_Review_Officer] [nvarchar](max) NULL,
	[Initiative_Review_Officer] [nvarchar](max) NULL,
	[Co-Ordinate_Agencies_Review_Officer] [nvarchar](max) NULL,
	[Avg_Grade_Work_Effi_Review_Officer] [nvarchar](max) NULL,
	[Remark_Character_Integrity] [nvarchar](max) NULL,
	[Overall_Assessment_Officer] [nvarchar](max) NULL,
	[Strength_atti_to_abnormal_person] [nvarchar](max) NULL,
	[State_of_Mind] [nvarchar](max) NULL,
	[Overall_Graduation] [nvarchar](max) NULL,
	[Agree_assessment_sect3] [nvarchar](max) NULL,
	[Diff_opinion] [nvarchar](max) NULL,
	[Overall_assessment_officerFourSec] [nvarchar](max) NULL,
	[Overall_graduationFourSec] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tbl_Section] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Section1]    Script Date: 23-02-2023 11:41:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Section1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login_ID] [nvarchar](max) NULL,
	[Employee_Name] [nvarchar](max) NULL,
	[Cadre] [nvarchar](max) NULL,
	[Date_Of_Birth] [nvarchar](max) NULL,
	[Present_Post] [nvarchar](max) NULL,
	[Appointment_Date] [date] NULL,
	[Department] [nvarchar](max) NULL,
	[ReportingOfficerName] [nvarchar](max) NULL,
	[ReportingOfficerDesign] [nvarchar](max) NULL,
	[ReportingOfficerPeriod] [nvarchar](max) NULL,
	[ReviewingOfficerName] [nvarchar](max) NULL,
	[ReviewingOfficerDesign] [nvarchar](max) NULL,
	[ReviewingOfficerPeriod] [nvarchar](max) NULL,
	[LeavePeriod] [nvarchar](max) NULL,
	[LeaveType] [nvarchar](max) NULL,
	[LeaveRemark] [nvarchar](max) NULL,
	[UnAuthAbsencePeriod] [nvarchar](max) NULL,
	[UnAuthAbsenceType] [nvarchar](max) NULL,
	[UnAuthAbsenceRemark] [nvarchar](max) NULL,
	[TrainingFrom] [date] NULL,
	[TrainingTo] [date] NULL,
	[TrainingInstitute] [nvarchar](max) NULL,
	[TrainingSubject] [nvarchar](max) NULL,
	[DateOfFillingAssets] [date] NULL,
	[From] [date] NULL,
	[To] [date] NULL,
 CONSTRAINT [PK_Tbl_Section1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Section2]    Script Date: 23-02-2023 11:41:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Section2](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login_ID] [nvarchar](max) NULL,
	[TaskDuringPost] [nvarchar](max) NULL,
	[AllocatedTask] [nvarchar](max) NULL,
	[WorksInWork] [nvarchar](max) NULL,
	[Diffi_In_Targets] [nvarchar](max) NULL,
	[Area_Requi_Train] [nvarchar](max) NULL,
	[Asset_Submit_Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tbl_Section2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Section3]    Script Date: 23-02-2023 11:41:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Section3](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login_ID] [nvarchar](max) NULL,
	[Agree_Self_assess] [nvarchar](max) NULL,
	[Work_Self_assess_Report] [nvarchar](max) NULL,
	[FailureInwork_Details] [nvarchar](max) NULL,
	[Skill_upgra_Center] [nvarchar](max) NULL,
	[Rating_On_Efficiency] [nvarchar](max) NULL,
	[Work_Reporting_Officer] [nvarchar](max) NULL,
	[Op_Reporting_Officer] [nvarchar](max) NULL,
	[Accom_Reporting_Officer] [nvarchar](max) NULL,
	[Avg_Grad_work_Reporting_Officer] [nvarchar](max) NULL,
	[Work_Review_Officer] [nvarchar](max) NULL,
	[Op_Review_Officer] [nvarchar](max) NULL,
	[Accom_Review_Officer] [nvarchar](max) NULL,
	[Avg_Grad_work_Review_Officer] [nvarchar](max) NULL,
	[Atti_Work_Repo_Officer] [nvarchar](max) NULL,
	[Sence_Respo_Repo_Officer] [nvarchar](max) NULL,
	[Bearing_Person_Repo_Officer] [nvarchar](max) NULL,
	[Emotional_Stability_Repo_Officer] [nvarchar](max) NULL,
	[Commu_Skills_Repo_Officer] [nvarchar](max) NULL,
	[CapacityOf_Work_Repo_Officer] [nvarchar](max) NULL,
	[Avg_Gradation_Person_Attri_Repo_Officer] [nvarchar](max) NULL,
	[Atti_Work_Review_Officer] [nvarchar](max) NULL,
	[Sence_Respo_Review_Officer] [nvarchar](max) NULL,
	[Bearing_Person_Review_Officer] [nvarchar](max) NULL,
	[Emotional_Stability_Review_Officer] [nvarchar](max) NULL,
	[Commu_Skills_Review_Officer] [nvarchar](max) NULL,
	[CapacityOf_Work_Review_Officer] [nvarchar](max) NULL,
	[Avg_Gradation_Person_Attri_Review_Officer] [nvarchar](max) NULL,
	[Knowldge_Skill_Repo_Officer] [nvarchar](max) NULL,
	[Strategic_Planning_Ability_Repo_Officer] [nvarchar](max) NULL,
	[Decision_Ability_Repo_Officer] [nvarchar](max) NULL,
	[Initiative_Repo_Officer] [nvarchar](max) NULL,
	[Co-Ordinate_Agencies_Repo_Officer] [nvarchar](max) NULL,
	[Avg_Grade_Work_Effi_Repo_Officer] [nvarchar](max) NULL,
	[Knowldge_Skill_Review_Officer] [nvarchar](max) NULL,
	[Strategic_Planning_Ability_Review_Officer] [nvarchar](max) NULL,
	[Decision_Ability_Review_Officer] [nvarchar](max) NULL,
	[Initiative_Review_Officer] [nvarchar](max) NULL,
	[Co-Ordinate_Agencies_Review_Officer] [nvarchar](max) NULL,
	[Avg_Grade_Work_Effi_Review_Officer] [nvarchar](max) NULL,
	[Remark_Character_Integrity] [nvarchar](max) NULL,
	[Overall_Assessment_Officer] [nvarchar](max) NULL,
	[Strength_atti_to_abnormal_person] [nvarchar](max) NULL,
	[State_of_Mind] [nvarchar](max) NULL,
	[Overall_Graduation] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tbl_Section3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Section4]    Script Date: 23-02-2023 11:41:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Section4](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login_ID] [nvarchar](max) NULL,
	[Agree_assessment_sect3] [nvarchar](max) NULL,
	[Diff_opinion] [nvarchar](max) NULL,
	[Overall_assessment_officer] [nvarchar](max) NULL,
	[Overall_graduation] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tbl_Section4] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Db_Asthapana] SET  READ_WRITE 
GO
