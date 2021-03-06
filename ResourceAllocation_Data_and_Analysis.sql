USE [DemoDB]
GO
/****** Object:  Table [dbo].[ResourceAllocation]    Script Date: 4/10/2022 8:07:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResourceAllocation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StaffNos] [varchar](30) NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[Resources] [varchar](50) NULL,
	[Qty] [tinyint] NULL,
	[Division] [varchar](150) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ResourceAllocation] ON 

INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (1, N'P103588', N'Frederick', N'EDIE', N'iphone', 1, N'PROJECTS')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (2, N'P103589', N'Alexander', N'FONG', N'iphone', 1, N'HUMAN RESOURCES')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (3, N'P103589', N'Alexander', N'FONG', N'AnyConnect', 3, N'HUMAN RESOURCES')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (4, N'P103615', N'Dalton', N'WALKER', N'iphone', 2, N'PROJECTS')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (5, N'P103615', N'Dalton', N'WALKER', N'AnyConnect', 1, N'PROJECTS')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (6, N'P103615', N'Dalton', N'WALKER', N'Monitor', 1, N'FINANCIAL CONTROL')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (7, N'C105203', N'John', N'MUSK', N'iphone', 2, N'FINANCIAL CONTROL')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (8, N'C290986', N'Benjamin', N'VANDENBROUCK', N'iphone', 2, N'PROJECTS')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (9, N'C105231', N'Angela', N'LAY', N'iphone', 1, N'PROJECTS')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (10, N'P103575', N'Jamie', N'FOXX', N'AnyConnect', 2, N'FINANCIAL CONTROL')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (11, N'P103597', N'Lian', N'DUKE', N'AnyConnect', 1, N'FINANCIAL CONTROL')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (12, N'P104945', N'Jacob', N'BRIGHT', N'iphone', 3, N'INFORMATION TECHNOLOGY')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (13, N'P232105', N'Alexander', N'OWEN', N'AnyConnect', 1, N'PROJECTS')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (14, N'P227537', N'Jude', N'ATHENES', N'AnyConnect', 1, N'HUMAN RESOURCES')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (15, N'C103591', N'Joan', N'NELSON', N'iphone', 1, N'PROJECTS')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (16, N'P103603', N'Bruce', N'WILLS', N'Monitor', 2, N'FINANCIAL CONTROL')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (17, N'P103582', N'Lee', N'BRANDON', N'AnyConnect', 1, N'HUMAN RESOURCES')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (18, N'P104979', N'Harry', N'POTTER', N'iphone', 2, N'INFORMATION TECHNOLOGY')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (19, N'P105007', N'Lorez', N'ANDREW', N'AnyConnect', 1, N'INFORMATION TECHNOLOGY')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (20, N'C104963', N'Harry', N'BOB', N'AnyConnect', 1, N'MAINTENANCE')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (21, N'P222146', N'Chloe', N'NIETTO', N'Monitor', 3, N'INFORMATION TECHNOLOGY')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (22, N'P222072', N'Larry', N'CURNER', N'AnyConnect', 1, N'FINANCIAL CONTROL')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (23, N'C104992', N'Jake', N'WILLIAMS', N'AnyConnect', 2, N'HUMAN RESOURCES')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (24, N'P105008', N'David', N'GREYSON', N'iphone', 1, N'HUMAN RESOURCES')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (25, N'C026555', N'Christopher', N'BEDROCK', N'Monitor', 1, N'MAINTENANCE')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (26, N'P227512', N'Collins', N'MCDANIEL', N'AnyConnect', 3, N'INFORMATION TECHNOLOGY')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (27, N'P024975', N'Michel', N'ARNOLD', N'AnyConnect', 1, N'HUMAN RESOURCES')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (28, N'P227634', N'Blake', N'OSBORNE', N'AnyConnect', 2, N'INFORMATION TECHNOLOGY')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (29, N'P333599', N'Moss', N'YATES', N'AnyConnect', 1, N'MAINTENANCE')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (30, N'C373605', N'Jamie', N'MEGHAN', N'iphone', 1, N'FINANCIAL CONTROL')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (31, N'P296983', N'Carlos', N'BIENTO', N'Monitor', 2, N'FINANCIAL CONTROL')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (32, N'C227200', N'Janet', N'JACKSON', N'Monitor', 1, N'MAINTENANCE')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (33, N'P355898', N'Tina', N'DRAKE', N'iphone', 2, N'INFORMATION TECHNOLOGY')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (34, N'P240893', N'Edward', N'SMYTH', N'iphone', 1, N'INFORMATION TECHNOLOGY')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (35, N'P240893', N'Edward', N'SMYTH', N'AnyConnect', 6, N'INFORMATION TECHNOLOGY')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (36, N'P240893', N'Edward', N'SMYTH', N'Monitor', 3, N'INFORMATION TECHNOLOGY')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (37, N'P355898', N'Tina', N'DRAKE', N'AnyConnect', 1, N'INFORMATION TECHNOLOGY')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (38, N'P355898', N'Tina', N'DRAKE', N'Monitor', 2, N'INFORMATION TECHNOLOGY')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (39, N'P227409', N'Rai', N'DEW', N'Monitor', 2, N'PROJECTS')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (40, N'P227409', N'Rai', N'DEW', N'iphone', 2, N'PROJECTS')
INSERT [dbo].[ResourceAllocation] ([ID], [StaffNos], [FirstName], [LastName], [Resources], [Qty], [Division]) VALUES (41, N'P103615', N'Miller', N'AVERY', N'iphone', 1, N'PROJECTS')
SET IDENTITY_INSERT [dbo].[ResourceAllocation] OFF
GO



------------------------------------------------------------------------



--Question 1: 
What is the total number of iphone, AnyConnect and Monitor in the dataset?


--Answer 1
Select Sum(t.iphone) as iphone, sum(t.AnyConnect) as AnyConnect, 
sum(t.Monitor) as Monitor from 
(
	Select sum(Qty) as iphone, 0 as AnyConnect, 0 as Monitor from ResourceAllocation
	where Resources = 'iphone'
	union
	Select 0 as iphone, sum(Qty) as AnyConnect, 0 as Monitor from ResourceAllocation
	where Resources = 'AnyConnect'
	union
	Select 0 as iphone, 0 as AnyConnect, sum(Qty) as Monitor from ResourceAllocation
	where Resources = 'Monitor'
)t


--------------------------------


--Question 2: 
What is the number of iphone, AnyConnect and Monitor allocated to each division?


--Answer 2
Select Division, Sum(t.iphone) as iphone, sum(t.AnyConnect) as AnyConnect, 
sum(t.Monitor) as Monitor from 
(
	Select Division, sum(Qty) as iphone, 0 as AnyConnect, 0 as Monitor from ResourceAllocation
	where Resources = 'iphone'
	group by Division
	union
	Select Division, 0 as iphone, sum(Qty) as AnyConnect, 0 as Monitor from ResourceAllocation
	where Resources = 'AnyConnect'
	group by Division
	union
	Select Division, 0 as iphone, 0 as AnyConnect, sum(Qty) as Monitor from ResourceAllocation
	where Resources = 'Monitor'
	group by Division
)t
group by t.Division