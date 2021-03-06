USE [DemoDB]
GO



/****** Object:  Table [dbo].[PivotSource]    Script Date: 4/3/2022 9:01:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PivotSource](
	[Month] [nvarchar](50) NOT NULL,
	[DayOfWeek] [nvarchar](50) NOT NULL,
	[Expenses] [smallint] NULL
) ON [PRIMARY]
GO



/******	Test Data for Analysis	******/
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'January', N'Sunday', 200)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'January', N'Monday', 100)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'January', N'Tuesday', 123)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'January', N'Wednesday', 154)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'January', N'Thursday', 50)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'January', N'Friday', 110)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'January', N'Saturday', 600)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'February', N'Sunday', 400)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'February', N'Monday', 200)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'February', N'Tuesday', 523)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'February', N'Wednesday', 754)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'February', N'Thursday', 450)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'February', N'Friday', 1810)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'February', N'Saturday', 6800)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'March', N'Sunday', 2900)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'March', N'Monday', 1900)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'March', N'Tuesday', 1923)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'March', N'Wednesday', 1954)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'March', N'Thursday', 590)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'March', N'Friday', 1910)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'March', N'Saturday', 6900)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'April', N'Sunday', 800)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'April', N'Monday', 10)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'April', N'Tuesday', 12)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'April', N'Wednesday', 15)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'April', N'Thursday', 5)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'April', N'Friday', 11)
INSERT [dbo].[PivotSource] ([Month], [DayOfWeek], [Expenses]) VALUES (N'April', N'Saturday', 60)
GO



--Question 1
/****	Write a dynamic SQL query that transpose or pivot given data to show Expense Analysis for all days of the week in each month****/


--Solution 1
/******	This query performs Pivot operation on Data to generate Expenses Analysis for days of the week in each month using dynamic SQL	******/
/****** Object:  StoredProcedure [dbo].[DynamicPivotQuery]    Script Date: 4/3/2022 9:01:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[DynamicPivotQuery]
As 
Begin

	SELECT distinct DayOfWeek into #DoW from PivotSource
	Alter table #DoW add Code tinyint
	update #DoW set Code = 
	Case 
		WHEN DayOfWeek = 'Sunday' THEN 1
		WHEN DayOfWeek = 'Monday' THEN 2
		WHEN DayOfWeek = 'Tuesday' THEN 3
		WHEN DayOfWeek = 'Wednesday' THEN 4
		WHEN DayOfWeek = 'Thursday' THEN 5
		WHEN DayOfWeek = 'Friday' THEN 6
		WHEN DayOfWeek = 'Saturday' THEN 7
	End
	where DayOfWeek in (Select distinct DayOfWeek from PivotSource)

	declare @cols nvarchar(255)
	declare @colnames nvarchar(255)
	declare @querystring nvarchar(max)

	Select @cols =  
	(
		Select QUOTENAME(DayOfWeek) from #DoW order by Code asc FOR XML PATH('')
	)
	Select @colnames = Replace(@cols, ']', '],')
	Select @colnames = LEFT(@colnames, Len(@colnames) -1)

	--Pivot query starts after this line
	set @querystring = 'Select pv.* from 
	(
		Select Month, DayOfWeek, Expenses from PivotSource
	) ps
	pivot
	(
		sum(Expenses)
		for DayOfWeek in (' + @colnames + ')
	) pv order by Datepart(mm, Month + '' 1900'') asc'

	execute(@querystring)

End
GO




--Question 2
/****	Write a static SQL query that transpose or pivot given data to show Expense Analysis for all days of the week in each month****/


--Solution 2
/******	This query performs Pivot operation on Data to generate Expenses Analysis per day and per month using direct SQL	******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[StaticPivotQuery]
As
Begin
	
	----------------------------------------------------------------
	-- month column is not sorted  in final output of this query
	-----------------------------------------------------------------
	Select pv.* from 
	(
		Select Month, DayOfWeek, Expenses from PivotSource
	) ps
	pivot
	(
		sum(Expenses)
		for DayOfWeek in ([Sunday], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday])
	) pv


	----------------------------------------------------------------------
	--Same static query as above with month column sorted in final output
	----------------------------------------------------------------------

	--month column is sorted in final output of this query
	Select pv.* from 
	(
		Select Month, DayOfWeek, Expenses from PivotSource 
	) ps
	pivot
	(
		sum(Expenses)
		for DayOfWeek in ([Sunday], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday])
	) pv order by DATEPART(mm,CAST([MONTH] + ' 1900' AS DATETIME)) asc

End
GO
