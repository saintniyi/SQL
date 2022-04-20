USE [DemoDB]
GO



/****** Object:  Table [dbo].[Prescription]    Script Date: 4/3/2022 8:35:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prescription](
	[SNo] [int] IDENTITY(1,1) NOT NULL,
	[PatientID] [nvarchar](50) NOT NULL,
	[Drug] [nvarchar](50) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[FilledDate] [date] NOT NULL,
 CONSTRAINT [PK__Prescrip__CA1EE04C4767C6B7] PRIMARY KEY CLUSTERED 
(
	[SNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Prescription] ON 




/****	Test Data for Analysis	****/
INSERT [dbo].[Prescription] ([SNo], [PatientID], [Drug], [OrderDate], [FilledDate]) VALUES (1, N'A460', N'X', CAST(N'2014-01-20' AS Date), CAST(N'2014-01-21' AS Date))
INSERT [dbo].[Prescription] ([SNo], [PatientID], [Drug], [OrderDate], [FilledDate]) VALUES (2, N'D998', N'X', CAST(N'2014-02-02' AS Date), CAST(N'2014-02-28' AS Date))
INSERT [dbo].[Prescription] ([SNo], [PatientID], [Drug], [OrderDate], [FilledDate]) VALUES (3, N'A491', N'Y', CAST(N'2014-02-15' AS Date), CAST(N'2014-02-17' AS Date))
INSERT [dbo].[Prescription] ([SNo], [PatientID], [Drug], [OrderDate], [FilledDate]) VALUES (4, N'B558', N'Z', CAST(N'2014-04-02' AS Date), CAST(N'2014-04-02' AS Date))
INSERT [dbo].[Prescription] ([SNo], [PatientID], [Drug], [OrderDate], [FilledDate]) VALUES (5, N'A460', N'X', CAST(N'2014-05-23' AS Date), CAST(N'2014-05-24' AS Date))
INSERT [dbo].[Prescription] ([SNo], [PatientID], [Drug], [OrderDate], [FilledDate]) VALUES (6, N'A479', N'Z', CAST(N'2014-07-24' AS Date), CAST(N'2014-09-13' AS Date))
INSERT [dbo].[Prescription] ([SNo], [PatientID], [Drug], [OrderDate], [FilledDate]) VALUES (7, N'A485', N'X', CAST(N'2014-08-04' AS Date), CAST(N'2014-08-14' AS Date))
INSERT [dbo].[Prescription] ([SNo], [PatientID], [Drug], [OrderDate], [FilledDate]) VALUES (8, N'B554', N'X', CAST(N'2014-08-16' AS Date), CAST(N'2014-09-02' AS Date))
INSERT [dbo].[Prescription] ([SNo], [PatientID], [Drug], [OrderDate], [FilledDate]) VALUES (9, N'A491', N'Y', CAST(N'2014-09-01' AS Date), CAST(N'2014-09-05' AS Date))
INSERT [dbo].[Prescription] ([SNo], [PatientID], [Drug], [OrderDate], [FilledDate]) VALUES (10, N'C882', N'X', CAST(N'2014-10-01' AS Date), CAST(N'2014-10-12' AS Date))
INSERT [dbo].[Prescription] ([SNo], [PatientID], [Drug], [OrderDate], [FilledDate]) VALUES (11, N'A435', N'Y', CAST(N'2014-08-16' AS Date), CAST(N'2014-08-17' AS Date))
INSERT [dbo].[Prescription] ([SNo], [PatientID], [Drug], [OrderDate], [FilledDate]) VALUES (12, N'A491', N'X', CAST(N'2013-08-14' AS Date), CAST(N'2013-08-14' AS Date))
INSERT [dbo].[Prescription] ([SNo], [PatientID], [Drug], [OrderDate], [FilledDate]) VALUES (13, N'A485', N'X', CAST(N'2014-08-16' AS Date), CAST(N'2014-08-17' AS Date))
INSERT [dbo].[Prescription] ([SNo], [PatientID], [Drug], [OrderDate], [FilledDate]) VALUES (14, N'D998', N'X', CAST(N'2014-03-03' AS Date), CAST(N'2014-03-03' AS Date))
INSERT [dbo].[Prescription] ([SNo], [PatientID], [Drug], [OrderDate], [FilledDate]) VALUES (15, N'A479', N'Z', CAST(N'2014-06-21' AS Date), CAST(N'2014-06-23' AS Date))
INSERT [dbo].[Prescription] ([SNo], [PatientID], [Drug], [OrderDate], [FilledDate]) VALUES (16, N'A460', N'X', CAST(N'2014-06-21' AS Date), CAST(N'2014-06-23' AS Date))
SET IDENTITY_INSERT [dbo].[Prescription] OFF
GO



--Assuming In-Patient have their PatientID starting with A

--Question 1
How many In-Patient have filled a prescription for drug “X” between January 1, 2014 and August 17, 2014? (answer = 5)


--Solution 1
Select Count(*) from Prescription where FilledDate between 'January 1, 2014' and 'August 17, 2014'
and PatientID like 'A%' and Drug = 'X'


--------------------------


--Question 2:
--Write an SQL query that provides the list of patients broken by Drug and Location (In-Patient/Out-Patient) with same date range in question 1?

--Solution 2
/*****	Analytic Query showing Patient list based on Drug prescription and Location	*****/
select PatientID, count(PatientID) as PatientCount, Drug, 
case 
when PatientID like 'A%' then 'In-Province'
	else 'Out-Province'
end as Location
from Prescription
where FilledDate between 'January 1, 2014' and 'August 17, 2014'
group by PatientID, Drug



--------------------------


--Question 3:
--Write an SQL query that provides list of patient count, Drug and Location (In-Patient/Out-Patient) with same date range in question 2. 
--Note: Individual PatientID should not be part of the result

--Solution 2
/*****	Analytic Query showing Patient Count based on Drug prescription and Location	*****/
select Sum(p.PatientCount) as PatientsCount, p.Drug, p.Location from
(
	select PatientID, count(PatientID) as PatientCount, Drug, 
	case 
	when PatientID like 'A%' then 'In-Province'
		else 'Out-Province'
	end as Location
	from Prescription
	where FilledDate between 'January 1, 2014' and 'August 17, 2014'
	group by PatientID, Drug
) p 
group by p.drug, p.Location
order by p.Drug, p.Location;

