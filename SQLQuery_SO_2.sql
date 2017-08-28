create table Vendors
(VendorID int,
VendorName nvarchar(100),
Address nvarchar(100),
City nvarchar(100),
State nvarchar(100),
ZipCode int,
Active nvarchar(100)
CONSTRAINT PK_Cendor PRIMARY KEY (VendorID))

insert into Vendors
values
(1002,'Appleburg', '1472 Witch Hollow Way', 'Salt Lake City', 'Utah', 84115, 'TRUE')

select * from Vendors

truncate table Vendors

CREATE PROC dbo.spInsertNewVendor
AS
BEGIN
        BEGIN TRY
            BEGIN TRAN
            INSERT INTO Vendors (VendorID, VendorName, Address, City, State, ZipCode, Active)
            VALUES (1002, 'Appleburg', '1472 Witch Hollow Way', 'Salt Lake City', 'Utah', 84115, 'TRUE')
            COMMIT TRAN
        END TRY
        BEGIN CATCH
            ROLLBACK TRAN
        END CATCH
END

EXEC dbo.spInsertNewVendor

-----------------------------------------------------


declare @Query nvarchar(max)
set @Query = 'Select Id, PtName + ''('' +Investigation+ '')'' as PtName, Y, M, D, Sex, PtCode FROM DiagMain'
print @Query

-----------------------------------------------------
create table temperature(
id int identity(1,1),
tempDate datetime,
tempRecorded varchar(10))

select * from temperature
select getdate()

insert into temperature
values
('2017-08-07','32'),
('2017-08-07','30'),
('2017-08-07','31'),
('2017-08-08','34'),
('2017-08-08','35'),
('2017-08-08','31'),
('2017-08-09','29'),
('2017-08-09','28'),
('2017-08-10','21'),
('2017-08-10','25'),
('2017-08-10','30')

select max(tempRecorded),tempDate
from temperature
group by tempDate

select min(tempRecorded),tempDate
from temperature
group by tempDate

select tempDate,max(cast(tempRecorded as int))-min(cast(tempRecorded as int)) as value
from temperature
group by tempDate


--------------------------------------------------------------------------------------
/*
SO Link: https://stackoverflow.com/questions/45809633/error-converting-data-type-varchar-to-numeric-when-try-to-compare-numeric

*/

declare @Tbl1 Table(id int, category varchar(50),value varchar(50))
insert into @Tbl1
select 1,'A','5'
union all
select 2,'B','6'
union all
select 3,'C','Val'
union all
select 4,'D','Hsd'

declare @Tbl2 Table(id int, category varchar(50),value varchar(50))
insert into @Tbl2
select 1,'A','5.0'
union all
select 2,'B','6.0'
union all
select 3,'C','Val'
union all
select 4,'D','Hsd'

--select * from @Tbl1

--select * from @Tbl2

select 
	A.id,
	A.category,
	A.value
from @Tbl1 A, @Tbl2 B
where
	case when isnumeric(A.value) = 1
	     then convert(varchar,cast(A.value as decimal(10,2)))
		 else A.value 
	end = 
	case when isnumeric(B.value) = 1
	     then convert(varchar,cast(B.value as decimal(10,2)))
		 else B.value 
	end

----------------------------------------------------------------------------

SELECT  GETDATE() as Today,
 RIGHT(CONVERT(VARCHAR(26), GETDATE(), 109),14) As DateTime_In_12h_Format

 -------------------------------------------------------------------------
--create table DocumentList(
--AccountID int,
--FolderID int,
--EffectiveDate datetime,
--VersionNumber float)

--select * from DocumentList
----truncate table DocumentList

--insert into DocumentList
--values
--(331,         4239,'2014-01-01 00:00:00.000',     1.0),
--(331,        4239,        '2014-02-01 00:00:00.000',     2.0),
--(331,         4239,        '2014-07-01 00:00:00.000',     3.0),
--(331,         4239,        '2015-01-01 00:00:00.000',    1.0),
--(331,         4239,        '2015-03-01 00:00:00.000',     2.0),
--(331,         4239,        '2016-01-01 00:00:00.000',    1.0),
--(331,         4239,        '2016-07-01 00:00:00.000',     2.0),
--(331,         4239,        '2016-09-01 00:00:00.000',     3.0),
--(331,         4239,        '2016-09-01 00:00:00.000',     4.0),
--(331,         4239,        '2016-09-01 00:00:00.000',     5.0),
--(331,         4239,        '2017-01-01 00:00:00.000',     1.0),
--(331,         4239,        '2017-01-01 00:00:00.000',     2.0),
--(331,         4239,        '2017-01-01 00:00:00.000',     4.0),
--(331,         4239,        '2017-07-01 00:00:00.000',     3.0)


--select AccountID,FolderID,EffectiveDate,Max(VersionNumber)
--from DocumentList
--order by AccountID

--Select 
--	FolderID,
--	EffectiveDate,
--	max(VersionNumber)
--from DocumentList
--order by EffectiveDate,FolderID,VersionNumber

-------------------------------------------------------
--https://www.testdome.com
CREATE TABLE dogs (
  id INTEGER NOT NULL PRIMARY KEY, 
  name VARCHAR(50) NOT NULL
)

CREATE TABLE cats (
  id INTEGER NOT NULL PRIMARY KEY, 
  name VARCHAR(50) NOT NULL
)

INSERT INTO dogs(id, name) values(1, 'Lola')
INSERT INTO dogs(id, name) values(2, 'Bella')
INSERT INTO cats(id, name) values(1, 'Lola')
INSERT INTO cats(id, name) values(2, 'Kitty')

select * from dogs
select * from cats

select distinct name from dogs
union  
select distinct name from cats

-----------------------------------
CREATE TABLE sessions (
  id INTEGER NOT NULL PRIMARY KEY,
  userId INTEGER NOT NULL,
  duration DECIMAL NOT NULL
);

INSERT INTO sessions(id, userId, duration) VALUES(1, 1, 10);
INSERT INTO sessions(id, userId, duration) VALUES(2, 2, 18);
INSERT INTO sessions(id, userId, duration) VALUES(3, 1, 14);

-- Expected output:
-- UserId  AverageDuration
-- -----------------------
-- 1       12

select userId,AVG(duration) from sessions
group by userId
having count(userId)>1


select count(distinct userid) from sessions

---------------------------------------------------
CREATE TABLE employees (
  id INTEGER NOT NULL PRIMARY KEY,
  managerId INTEGER REFERENCES employees(id), 
  name VARCHAR(30) NOT NULL
);

INSERT INTO employees(id, managerId, name) VALUES(1, NULL, 'John');
INSERT INTO employees(id, managerId, name) VALUES(2, 1, 'Mike');
INSERT INTO employees(id, managerId, name) VALUES(3, NULL, 'Liz');
INSERT INTO employees(id, managerId, name) VALUES(4, 3, 'Bob');

select * from employees
where id in (select id from employees where managerId is not null)
-- Expected output (in any order):
-- name
-- ----
-- Mike

-- Explanation:
-- In this example.
-- John is Mike's manager. Mike does not manage anyone.
-- Mike is the only employee who does not manage anyone.


---------------------------------------------------------------
--URL: https://stackoverflow.com/questions/45836172/displaying-data-twice-in-sql-server/45839465#45839465
create table Table1
(date datetime,
type varchar(50),
amount int)

insert into Table1
values
('01-jul-2017','Type A',20),
('01-Jul-2017','Type B',30),
('01-Jul-2017','Type C',10),
('01-Aug-2017','Type A',50),
('01-Aug-2017','Type D',40),
('01-Aug-2017','Type C',70)

truncate table table1
select * from Table1

--SELECT DATE, Type, Amount 
--FROM Table1
--WHERE DATE >= cast('01-Jul-2017' as datetime)
--AND DATE <= cast('31-Aug-2017' as datetime)

--Union 

--SELECT '01-Jul-2017' AS Dt, TYPE, 0 AS AMOUNT
--WHERE DATE >= '01-Aug-2017'
--AND DATE <= '31-Aug-2017'
--AND Type NOT in (SELECT DISTINCT type WHERE DATE >= '01-Jul-2017'
--AND DATE <= '31-Jul-2017')

--Union

--SELECT '01-Aug-2017' AS Dt, TYPE, 0 AS AMOUNT
--WHERE DATE >= '01-Jul-2017'
--AND DATE <= '31-Jul-2017'
--AND Type NOT in (SELECT DISTINCT TYPE WHERE DATE >= '01-Aug-2017'
--AND DATE <= '31-Aug-2017')

SELECT 
  CONVERT(CHAR(4), GETDATE(), 100) + CONVERT(CHAR(4), GETDATE(), 120) 

select [Date] As Date_For_Table,
	[Type A] = 
	case
		when [Type A] IS NULL Then 0
		else [Type A]
	end,
	[Type B] = 
	case		 
		when [Type B] IS NULL Then 0
		else [Type B]
	end,
	[Type C] = 
	case
		when [Type C] IS NULL Then 0
		else [Type C]
	end,
	[Type D] = 
	case
		when [Type D] IS NULL Then 0
		else [Type D]
	end
from 
(
select CONVERT(CHAR(4), date, 100) + CONVERT(CHAR(4), date, 120) as date ,type,Amount
from Table1
) as PivotData
pivot
(
avg(amount) for type in
([Type A],[Type B],[Type C],[Type D]))as Pivoting
order by date desc


-------------------------------------------------------------------------------------------
--URL: https://stackoverflow.com/questions/45836077/sql-server-pivot-and-sort/45840941#45840941
create table shoporder(
ItemCode varchar(50),
Description varchar(50),
ReleasedDate datetime,
RequiredQty int)

select MONTH(releaseddate) from shoporder
truncate table shoporder
insert into shoporder
values
('D4593-WD15127BP','SLEEVE NUT','08/01/2017',19200),
('D4593-WD15127BP','SLEEVE NUT','08/02/2017',18000),
('D4593-WD15127BP','SLEEVE NUT','08/30/2017',20480),
('D4593-WD15127BP','SLEEVE NUT','08/31/2017',18000),
('D4593-WD15127BP','SLEEVE NUT','09/23/2017',19200),
('D4593-WD15127BP','SLEEVE NUT','09/26/2017',18000),
('D4593-WD15127BP','SLEEVE NUT','09/02/2017',20480),
('D4593-WD15127BP','SLEEVE NUT','09/17/2017',500),
('FE3-1209-000','STARTER','08/03/2017',18000),
('FE3-1209-000','STARTER','08/06/2017',9608),
('FE3-1209-000','STARTER','08/20/2017',35700),
('FE3-1209-000','STARTER','08/19/2017',50400),
('FE3-1209-000','STARTER','09/15/2017',300),
('FE3-1209-000','STARTER','09/10/2017',48720),
('FE3-1209-000','STARTER','09/16/2017',11908),
('FE3-1209-000','STARTER','09/22/2017',6572)

select * from shoporder
select cast(year(ReleasedDate) as nvarchar)+'/'+cast(month(ReleasedDate) as nvarchar) from shoporder

Select 
	[ItemCode],
	[Description],
	[2017/8],
	[2017/9]
from
(
select cast(year(ReleasedDate) as nvarchar)+'/'+cast(month(ReleasedDate) as nvarchar) as ReleasedDate,ItemCode,Description,RequiredQty
from shoporder) as PivotData
Pivot
(
sum(RequiredQty) for ReleasedDate in
([2017/8],[2017/9])) as Pivoting
order by ItemCode

-----------------------------------------------------
/*
https://stackoverflow.com/questions/45876876/how-to-combine-multiple-rows-into-one-row-and-multiple-column-in-sql-server
*/
select * from sys.tables

create table carorder(
car_id int,
car_type int,
car_status int,
car_count int)

insert into carorder
values
(100421,1,1,9),   
(100421,1,2,8),   
(100421,1,3,3), 
(100421,2,1,6),   
(100421,2,2,8),   
(100421,2,3,3),
(100422,1,1,5),
(100422,1,2,8),   
(100422,1,3,7)

--using case
select [car_id], [car_type],
max(case [car_status] when 1 then [car_count] end) as [sale],
max(case [car_status] when 2 then [car_count] end) as [purchase],
max(case [car_status] when 3 then [car_count] end) as [return]
from carorder
group by [car_id], [car_type]
order by [car_id]

--using pivot
select 
	car_id,
	car_type,
	[1]  as Sale,
	[2] as Purchase,
	[3] as [return]
from carorder d
pivot
(sum([car_count]) for [car_status] in([1],[2],[3]) ) as pvt
-----------------------------------------------------------------------
/*
https://stackoverflow.com/questions/45914698/matching-two-or-more-column-value-and-display-in-a-single-column-in-sql-server
*/
create table tbl_invoice
(PayDate Datetime,
Amount int)

insert into tbl_invoice
values
('2017-08-23',2300),
('2017-08-23',2400),
('2017-08-23',2500),
('2017-08-24',5000)


create table tbl_Expense
(ExpDate datetime,
ExpAmount int)

insert into tbl_Expense
values
('2017-08-23',1700),
('2017-08-25',2800),
('2017-08-25',2900)

select * from tbl_invoice
select * from tbl_Expense

select 
	COALESCE(T1.Paydate,T2.ExpDate) as Date,
	COALESCE(T1.Amount,0) as Amount,
	COALESCE(T2.ExpAmount,0) as ExpAmount
from
(select Paydate,SUM(Amount) as Amount
from tbl_invoice
group by PayDate)T1
full outer join
(select ExpDate,SUM(ExpAmount) as ExpAmount
from tbl_Expense
group by ExpDate)T2
on
T1.PayDate = T2.ExpDate 

select  date , sum(Amount) as Amount ,sum(ExpAmount) as ExpAmount from 
(select PayDate as date , Amount, 0 as ExpAmount from tbl_Invoice
union 
select ExpDate as date,0 as Amount, ExpAmount from tbl_Expense ) as a 
group by date