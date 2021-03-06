USE [DemoDB]
GO
/****** Object:  Table [dbo].[BedAllocations]    Script Date: 4/11/2022 8:07:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BedAllocations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FacilityNos] [smallint] NULL,
	[FacilityName] [nvarchar](120) NULL,
	[City] [nvarchar](50) NULL,
	[Unit] [nvarchar](120) NULL,
	[RoomNos] [nvarchar](50) NULL,
	[BedNos] [smallint] NULL,
	[BedStatus] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BedAllocations] ON 

INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (1, 1, N'Baptist Medical Center South', N'Montgomery', N'GMU', N'G3', 2, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (2, 1, N'Baptist Medical Center South', N'Montgomery', N'GMU', N'G4', 2, N'Free')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (3, 1, N'Baptist Medical Center South', N'Montgomery', N'GMU', N'G5', 2, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (4, 1, N'Baptist Medical Center South', N'Montgomery', N'GMU', N'G6', 3, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (5, 1, N'Baptist Medical Center South', N'Montgomery', N'GMU', N'G7', 3, N'Free')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (6, 1, N'Baptist Medical Center South', N'Montgomery', N'ICU', N'B40', 1, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (7, 1, N'Baptist Medical Center South', N'Montgomery', N'ICU', N'B41', 1, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (8, 1, N'Baptist Medical Center South', N'Montgomery', N'ICU', N'B42', 1, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (9, 1, N'Baptist Medical Center South', N'Montgomery', N'ICU', N'B43', 1, N'Free')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (10, 2, N'Parkwest Medical Center', N'Knoxville', N'Medical Unit', N'450', 6, N'Free')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (11, 2, N'Parkwest Medical Center', N'Knoxville', N'Medical Unit', N'451', 6, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (12, 2, N'Parkwest Medical Center', N'Knoxville', N'Medical Unit', N'452', 6, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (13, 2, N'Parkwest Medical Center', N'Knoxville', N'Medical Unit', N'453', 6, N'Free')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (14, 2, N'Parkwest Medical Center', N'Knoxville', N'Cardiac Units', N'312', 1, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (15, 2, N'Parkwest Medical Center', N'Knoxville', N'Cardiac Units', N'313', 1, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (16, 2, N'Parkwest Medical Center', N'Knoxville', N'Cardiac Units', N'314', 1, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (17, 2, N'Parkwest Medical Center', N'Knoxville', N'Cardiac Units', N'315', 1, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (18, 3, N'Thomas Hospital', N'Fairhope', N'ICU', N'P22', 1, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (19, 3, N'Thomas Hospital', N'Fairhope', N'ICU', N'P23', 1, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (20, 3, N'Thomas Hospital', N'Fairhope', N'ICU', N'P24', 1, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (21, 3, N'Thomas Hospital', N'Fairhope', N'ICU', N'P25', 1, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (22, 3, N'Thomas Hospital', N'Fairhope', N'ICU', N'P26', 1, N'Free')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (23, 3, N'Thomas Hospital', N'Fairhope', N'GMU', N'A11', 4, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (24, 3, N'Thomas Hospital', N'Fairhope', N'GMU', N'A12', 4, N'Free')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (25, 3, N'Thomas Hospital', N'Fairhope', N'GMU', N'A13', 6, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (26, 3, N'Thomas Hospital', N'Fairhope', N'GMU', N'A14', 6, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (27, 3, N'Thomas Hospital', N'Fairhope', N'GMU', N'A15', 8, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (28, 3, N'Thomas Hospital', N'Fairhope', N'GMU', N'A16', 8, N'Free')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (29, 3, N'Thomas Hospital', N'Fairhope', N'Prenatal', N'R1', 8, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (30, 3, N'Thomas Hospital', N'Fairhope', N'Prenatal', N'R2', 8, N'Free')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (31, 3, N'Thomas Hospital', N'Fairhope', N'Maternal', N'S2', 3, N'Occupied')
INSERT [dbo].[BedAllocations] ([ID], [FacilityNos], [FacilityName], [City], [Unit], [RoomNos], [BedNos], [BedStatus]) VALUES (32, 3, N'Thomas Hospital', N'Fairhope', N'Maternal', N'S3', 3, N'Free')
SET IDENTITY_INSERT [dbo].[BedAllocations] OFF
GO




----------------------------



----Question 1: 
What is the total number of Free beds, Occupied beds and Total beds in the dataset?


----Answer 1
Select Sum(t.FreeBeds) as TotalFreeBeds, sum(t.OccupiedBeds) as TotalOccupiedBeds, 
Sum(t.TotalBeds) as TotalAvailableBeds from 
(
	Select Sum(BedNos) as FreeBeds, 0 as OccupiedBeds, 0 as TotalBeds 
	from BedAllocations 
	where BedStatus = 'Free'

	union

	Select 0 as FreeBeds, Sum(BedNos) as OccupiedBeds, 0 as TotalBeds 
	from BedAllocations 
	where BedStatus = 'Occupied'

	union

	Select 0 as FreeBeds, 0 as OccupiedBeds, Sum(BedNos) as TotalBeds 
	from BedAllocations 
	where BedStatus in (select distinct BedStatus from BedAllocations)
	
) t


-----------------------------------------------------------------------------------------



----Question 2: 
What is the total number of Free beds, Occupied beds and Total beds in each Facility?


----Answer 2
Select t.FacilityNos, t.FacilityName, Sum(t.FreeBeds) as FreeBeds, sum(t.OccupiedBeds) as OccupiedBeds, 
Sum(t.TotalBeds) as TotalBeds from 
(
	Select FacilityNos, FacilityName, Sum(BedNos) as FreeBeds, 0 as OccupiedBeds, 0 as TotalBeds 
	from BedAllocations 
	where BedStatus = 'Free'
	group by FacilityNos, FacilityName

	union

	Select FacilityNos, FacilityName, 0 as FreeBeds, Sum(BedNos) as OccupiedBeds, 0 as TotalBeds 
	from BedAllocations 
	where BedStatus = 'Occupied'
	group by FacilityNos, FacilityName

	union

	Select FacilityNos, FacilityName, 0 as FreeBeds, 0 as OccupiedBeds, Sum(BedNos) as TotalBeds 
	from BedAllocations 
	where BedStatus in (select distinct BedStatus from BedAllocations)
	group by FacilityNos, FacilityName
) t
group by t.FacilityNos, t.FacilityName
order by t.FacilityNos, t.FacilityName



-----------------------------------------------------------------------------------------



----Question 3: 
What is the total number of Free beds, Occupied beds and Total beds in each Facility and unit?


----Answer 3
Select t.FacilityNos, t.FacilityName, t.Unit, Sum(t.FreeBeds) as FreeBeds, sum(t.OccupiedBeds) as OccupiedBeds, 
Sum(t.TotalBeds) as TotalBeds from 
(
	Select FacilityNos, FacilityName, Unit, Sum(BedNos) as FreeBeds, 0 as OccupiedBeds, 0 as TotalBeds 
	from BedAllocations 
	where BedStatus = 'Free'
	group by FacilityNos, FacilityName, Unit

	union

	Select FacilityNos, FacilityName, Unit, 0 as FreeBeds, Sum(BedNos) as OccupiedBeds, 0 as TotalBeds 
	from BedAllocations 
	where BedStatus = 'Occupied'
	group by FacilityNos, FacilityName, Unit

	union

	Select FacilityNos, FacilityName, Unit, 0 as FreeBeds, 0 as OccupiedBeds, Sum(BedNos) as TotalBeds 
	from BedAllocations 
	where BedStatus in (select distinct BedStatus from BedAllocations)
	group by FacilityNos, FacilityName, Unit
) t
group by t.FacilityNos, t.FacilityName, Unit



-----------------------------------------------------------------------------------------



----Question 4: 
What is the total number of Free beds, Occupied beds and Total beds for a specific Facility?


----Answer 4
Create Procedure [dbo].[getList_FacilityInfo_by_FacNos] @xFacNos int
As
Begin
	Select t.FacilityNos, t.FacilityName, Sum(t.FreeBeds) as FreeBeds, sum(t.OccupiedBeds) as OccupiedBeds, 
	Sum(t.TotalBeds) as TotalBeds from 
	(
		Select FacilityNos, FacilityName, Sum(BedNos) as FreeBeds, 0 as OccupiedBeds, 0 as TotalBeds 
		from BedAllocations 
		where BedStatus = 'Free'
		group by FacilityNos, FacilityName

		union

		Select FacilityNos, FacilityName, 0 as FreeBeds, Sum(BedNos) as OccupiedBeds, 0 as TotalBeds 
		from BedAllocations 
		where BedStatus = 'Occupied'
		group by FacilityNos, FacilityName

		union

		Select FacilityNos, FacilityName, 0 as FreeBeds, 0 as OccupiedBeds, Sum(BedNos) as TotalBeds 
		from BedAllocations 
		where BedStatus in (select distinct BedStatus from BedAllocations)
		group by FacilityNos, FacilityName
	) t
	where FacilityNos = @xFacNos
	group by t.FacilityNos, t.FacilityName
	order by t.FacilityNos, t.FacilityName
End



-----------------------------------------------------------------------------------------



----Question 5: 
----What is the total number of Free beds, Occupied beds and Total beds for a specific Facility and unit?


----Answer 5
Create Procedure [dbo].[getList_FacilityUnit_Info] @xFacNos smallint, @xUnit nvarchar(120)
As
Begin
	
	Select t.FacilityNos, t.FacilityName, t.Unit, Sum(t.FreeBeds) as FreeBeds, sum(t.OccupiedBeds) as OccupiedBeds, 
	Sum(t.TotalBeds) as TotalBeds from 
	(
		Select FacilityNos, FacilityName, Unit, Sum(BedNos) as FreeBeds, 0 as OccupiedBeds, 0 as TotalBeds 
		from BedAllocations 
		where BedStatus = 'Free'
		group by FacilityNos, FacilityName, Unit

		union

		Select FacilityNos, FacilityName, Unit, 0 as FreeBeds, Sum(BedNos) as OccupiedBeds, 0 as TotalBeds 
		from BedAllocations 
		where BedStatus = 'Occupied'
		group by FacilityNos, FacilityName, Unit

		union

		Select FacilityNos, FacilityName, Unit, 0 as FreeBeds, 0 as OccupiedBeds, Sum(BedNos) as TotalBeds 
		from BedAllocations 
		where BedStatus in (select distinct BedStatus from BedAllocations)
		group by FacilityNos, FacilityName, Unit
	) t
	where t.FacilityNos = @xFacNos and t.Unit = @xUnit
	group by t.FacilityNos, t.FacilityName, Unit

End
