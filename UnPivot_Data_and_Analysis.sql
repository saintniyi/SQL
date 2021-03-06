USE [DemoDB]
GO



/****** Object:  Table [dbo].[UnPivotSource]    Script Date: 4/3/2022 9:18:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnPivotSource](
	[Month] [nvarchar](50) NOT NULL,
	[Sunday] [int] NULL,
	[Monday] [int] NULL,
	[Tuesday] [int] NULL,
	[Wednesday] [int] NULL,
	[Thursday] [int] NULL,
	[Friday] [int] NULL,
	[Saturday] [int] NULL
) ON [PRIMARY]
GO



/******	Test Data to UnPivot	******/
INSERT [dbo].[UnPivotSource] ([Month], [Sunday], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday]) VALUES (N'April', 800, 10, 12, 15, 5, 11, 60)
INSERT [dbo].[UnPivotSource] ([Month], [Sunday], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday]) VALUES (N'February', 400, 200, 523, 754, 450, 1810, 6800)
INSERT [dbo].[UnPivotSource] ([Month], [Sunday], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday]) VALUES (N'January', 200, 100, 123, 154, 50, 110, 600)
INSERT [dbo].[UnPivotSource] ([Month], [Sunday], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday]) VALUES (N'March', 2900, 1900, 1923, 1954, 590, 1910, 6900)
GO



--Question 1
--Write a dynamic SQL query to unpivot the data to its original state 


--Answer 1
/******	Dynamic SQL Query to generate UnPivoted Data	******/
/****** Object:  StoredProcedure [dbo].[DynamicUnPivotQuery]    Script Date: 4/3/2022 9:18:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[DynamicUnPivotQuery]
As
Begin

	declare @cols nvarchar(255)
	declare @colnames nvarchar(255)
	declare @querystring nvarchar(max)

	Select @cols =  
	(
		Select Quotename(COLUMN_NAME) from INFORMATION_SCHEMA.Columns 
		where Table_Name='UnPivotSource' and COLUMN_NAME like '%day' FOR XML PATH('')
	)
	Select @colnames = Replace(@cols, ']', '],')
	Select @colnames = LEFT(@colnames, Len(@colnames) -1)
	
	--UnPivot query starts after this line
	set @querystring = 'Select Month, DayOfWeek, Expenses from
	(
		Select * from UnPivotSource
	) pvt
	UnPivot 
	(
		Expenses
		for DayOfWeek in (' + @colnames + ') 
	) unpvt order by DATEPART(mm, Month + '' 1900'') asc'

	exec(@querystring)

End
GO





--Question 2
--Write a static SQL query to unpivot the data to its original state 


--Answer 2
/******	Static SQL Query to generate UnPivoted Data	******/
/****** Object:  StoredProcedure [dbo].[StaticUnPivotQuery]    Script Date: 4/3/2022 9:18:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[StaticUnPivotQuery]
As
Begin

	Select Month, DayOfWeek, Expenses from
	(
		Select * from UnPivotSource
	) as pvt
	UnPivot 
	(
		Expenses
		for DayOfWeek in ([Sunday], [Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday]) 
	) as unpvt order by DATEPART(mm, Month + ' 1900')

End
GO
