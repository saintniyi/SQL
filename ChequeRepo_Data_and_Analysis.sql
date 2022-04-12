USE [DemoDB]
GO



/****** Object:  Table [dbo].[ChequeRepo]    Script Date: 4/3/2022 7:05:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChequeRepo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [varchar](100) NULL,
	[ChequeStatus] [int] NULL,
	[Amount] [money] NULL,
	[ScanDate] [date] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChequeRepo] ON 




/** Test Data for Analysis **/
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (1, N'Kingston', 2, 350860.0000, CAST(N'2013-03-06' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (2, N'Kingston', 2, 100000.0000, CAST(N'2013-03-06' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (3, N'Kingston', 2, 80000.0000, CAST(N'2013-03-06' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (4, N'Kingston', 3, 120000.0000, CAST(N'2013-03-06' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (5, N'Kingston', 2, 160000.0000, CAST(N'2013-03-06' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (6, N'Kingston', 2, 200000.0000, CAST(N'2013-03-06' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (7, N'Kingston', 2, 4000000.0000, CAST(N'2013-03-06' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (8, N'Kingston', 1, 10000000.0000, CAST(N'2013-03-06' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (9, N'Kingston', 1, 10000000.0000, CAST(N'2013-03-06' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (10, N'Victoria', 2, 388181.3500, CAST(N'2013-03-06' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (11, N'Victoria', 2, 735000.0000, CAST(N'2013-03-06' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (12, N'Victoria', 2, 1600000.0000, CAST(N'2013-03-06' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (13, N'Victoria', 3, 10000.0000, CAST(N'2013-03-06' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (14, N'Victoria', 1, 126946.7800, CAST(N'2013-03-06' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (15, N'Victoria', 1, 63473.3900, CAST(N'2013-03-06' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (16, N'Victoria', 2, 63473.3900, CAST(N'2013-03-06' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (17, N'Victoria', 2, 63473.3900, CAST(N'2013-03-06' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (18, N'Kingston', 2, 10000.0000, CAST(N'2013-03-07' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (19, N'Kingston', 2, 10000.0000, CAST(N'2013-03-07' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (20, N'Kingston', 2, 10000.0000, CAST(N'2013-03-07' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (21, N'Kingston', 3, 3407720.0000, CAST(N'2013-03-07' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (22, N'Kingston', 2, 8900000.0000, CAST(N'2013-03-07' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (23, N'Kingston', 1, 50000.0000, CAST(N'2013-03-07' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (24, N'Victoria', 1, 100000.0000, CAST(N'2013-03-07' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (25, N'Victoria', 2, 100000.0000, CAST(N'2013-03-07' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (26, N'Victoria', 2, 100000.0000, CAST(N'2013-03-07' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (27, N'Victoria', 2, 50000.0000, CAST(N'2013-03-07' AS Date))
INSERT [dbo].[ChequeRepo] ([ID], [BranchName], [ChequeStatus], [Amount], [ScanDate]) VALUES (28, N'Victoria', 3, 20000.0000, CAST(N'2013-03-07' AS Date))
SET IDENTITY_INSERT [dbo].[ChequeRepo] OFF
GO



/*****	Analytic Query Showing Various Information About Cheque Transactions	*****/

--The table above shows information of cheque transactions.
--In the ChequeStatus column, 	1 = Pending, 2 = Approved, 3 = DisApproved

-----------------------------------------------



--Question 1 What is Total cheque count in each category and in the whole dataset?





--Answer 1
SELECT sum(t.CountApproved) AS CountApproved, sum(t.CountDisapproved) AS CountDisapproved, 
sum(t.CountPending) AS CountPending, 
sum(t.CountApproved) + sum(t.CountDisapproved) + sum(t.CountPending) AS TotalChequeCountInData,
Format(SUM(t.AmtApproved), '#,###.00') AS AmtApproved, Format(SUM(t.AmtDisapproved), '#,###.00') AS AmtDisapproved,
Format(SUM(t.AmtPending), '#,###.00') AS AmtPending, SUM(t.Amt) AS Amt FROM  
(
	--Approved 
	select count(ChequeStatus) AS CountApproved, 
	0 AS CountDisApproved, 0 AS CountPending, sum(Amount) AS AmtApproved, 0.00 AS AmtDisApproved, 
	0.00 AS AmtPending, sum(Amount) AS Amt from ChequeRepo 
	where ChequeStatus = 2 

	union all

	--Pending
	SELECT 0 AS CountApproved, 0 AS CountDisApproved,
	count(ChequeStatus) AS CountPending, 0.00 AS AmtApproved, 0.00 AS AmtDisApproved, 
	sum(Amount) AS AmtPending, sum(Amount) AS Amt from ChequeRepo  
	where ChequeStatus = 1 

	union all
	
	--Disapproved
	select 0 AS CountApproved, count(ChequeStatus) 
	AS CountDisApproved, 0 AS CountPending, 0.00 AS AmtApproved, sum(Amount) AS 
	AmtDisApproved, 0.00 AS AmtPending, sum(Amount) AS Amt from ChequeRepo 
	where ChequeStatus = 3 
)t 

	

-----------------------------------------------




--Question 2
--What is the count of transactions for each day for the whole data


--Solution 2
select Format(ScanDate, 'dd-MMM-yyyy') as ScanDate, count(BranchName) as 'Count'
from ChequeRepo
group by ScanDate



-----------------------------------------------


Question 3: What is the count of cheques from each branch for the whole data?



Answer 3
select BranchName, count(BranchName) as 'Count'
from ChequeRepo
group by BranchName



-----------------------------------------------



--Question 4 
/****	What is the count of Approved, 
--count of Disapproved, count of Pending, count of all cheques, total amount of Approved, 
--total amount of Disaproved, total amount of pending, and total amount of all cheques,  for each Date in each branch? ****/ 

--1 = Pending, 2 = Approved, 3 = DisApproved for ChequeStatus column values

--**The query should show the value of Pending, Approved, and Disapproved rather than 1,2,3 in the ChequeStatus column.


--Solution 4
----	Query showing count and amount for each date and branch	-----
SELECT t.ScanDate, t.BranchName, sum(t.CountApproved) AS CountApproved,
sum(t.CountDisapproved) AS CountDisapproved, sum(t.CountPending) AS CountPending,
sum(t.CountApproved) + sum(t.CountDisapproved) + sum(t.CountPending) AS TotCountPerBranchPerDay,
Format(SUM(t.AmtApproved), '#,###.00') AS AmtApproved, Format(SUM(t.AmtDisapproved), '#,###.00') AS AmtDisapproved,
Format(SUM(t.AmtPending), '#,###.00') AS AmtPending, SUM(t.Amt) AS Amt FROM  
(
	--Approved 
	select Format(ScanDate, 'dd-MMM-yyyy') as ScanDate, BranchName, count(ChequeStatus) AS CountApproved, 
	0 AS CountDisApproved, 0 AS CountPending, sum(Amount) AS AmtApproved, 0.00 AS AmtDisApproved, 
	0.00 AS AmtPending, sum(Amount) AS Amt from ChequeRepo 
	where ChequeStatus = 2 and ScanDate between '2013-03-06' and '2013-03-06' 
	GROUP BY ScanDate, BranchName

	union all

	--Pending
	SELECT Format(ScanDate, 'dd-MMM-yyyy') as ScanDate, BranchName, 0 AS CountApproved, 0 AS CountDisApproved,
	count(ChequeStatus) AS CountPending, 0.00 AS AmtApproved, 0.00 AS AmtDisApproved, 
	sum(Amount) AS AmtPending, sum(Amount) AS Amt from ChequeRepo  
	where ChequeStatus = 1 and ScanDate between '2013-03-06' and '2013-03-06' 
	GROUP BY ScanDate, BranchName 

	union all
	
	--Disapproved
	select Format(ScanDate, 'dd-MMM-yyyy') as ScanDate, BranchName, 0 AS CountApproved, count(ChequeStatus) 
	AS CountDisApproved, 0 AS CountPending, 0.00 AS AmtApproved, sum(Amount) AS 
	AmtDisApproved, 0.00 AS AmtPending, sum(Amount) AS Amt from ChequeRepo 
	where ChequeStatus = 3 and ScanDate between '2013-03-06' and '2013-03-06' 
	GROUP BY ScanDate, BranchName

)t 

GROUP BY t.ScanDate, t.BranchName
