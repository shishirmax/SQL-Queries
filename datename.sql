SELECT ROUND(ROUND(0.01488,3),2)

SELECT LEFT(DATENAME(MONTH,GETDATE()),3)

select 
	DATENAME(YEAR,GETDATE()) AS YEAR_COLUMN,
	DATENAME(MONTH,GETDATE()) AS MONTH_COLUMN,
	DATENAME(DAY,GETDATE()) AS DAY_COLUMN,
	DATENAME(DAYOFYEAR,GETDATE()) AS DAYOFYEAR_COLUMN,
	DATENAME(WEEKDAY,GETDATE()) AS WEEKDAY_COLUMN
		

create table tblProduct(
	ID int,
	Project_No int,
	OrderDate datetime
)

select * from tblProduct

insert into tblProduct
values
(2581,100,'2012-01-13'),
(2581,101,'2012-01-21'),
(2582,102,'2012-03-04'),
(2583,103,'2012-02-14')


select 
	CAST(LEFT(DATENAME(month,OrderDate),3) AS VARCHAR(50)),
	ID,
	Project_No 
from tblProduct
UNION ALL
select CAST(OrderDate as varchar(5)),ID,Project_No from tblProduct

SELECT CONVERT(NVARCHAR(10), GETDATE(),126)

select convert(varchar(30), GETDATE(), 106) 

declare @d date = GETDATE();
select cast(YEAR(@d) as varchar(4)) + '-' + DATENAME(mm, @d) + '-' + cast(DAY(@d) as varchar(2))


DECLARE @DATE DATETIME = GETDATE()
DECLARE @MOD_DATE VARCHAR(50)
DECLARE @YEAR VARCHAR(10)
DECLARE @MONTH VARCHAR(10)
DECLARE @DAY VARCHAR(10)

SET @YEAR = DATENAME(YEAR,@DATE)
SET @MONTH = DATENAME(MONTH,@DATE)
SET @DAY = DATENAME(DAY,@DATE)

SET @MOD_DATE= @YEAR+'-'+LEFT(@MONTH,3)+'-'+@DAY
PRINT @MOD_DATE


--Some Random Operations
select GETDATE()
declare @report_date datetime
declare @strBeginDate datetime = '2017-06-03'
set @report_date = (case 
						when day(@strBeginDate)<=12 
							then convert(varchar, year(@strBeginDate)) 
							+ '-'+right('0'+convert(varchar, day(@strBeginDate)),2) 
							+'-'+right('0'+convert(varchar, month(@strBeginDate)),2)
						else @strBeginDate 
					end)

print @strBeginDate
print @report_date

declare @strBeginDate datetime = '2017-06-03'
select convert(varchar, year(@strBeginDate))+'-'+right('0'+convert(varchar, day(@strBeginDate)),2)+'-'+right('0'+convert(varchar, month(@strBeginDate)),2)


declare @startDate_pre datetime
declare @endDate_pre datetime

set @startDate_pre=dateadd(mm,-1,GETDATE()) --getting one month back 
set @endDate_pre =dateadd(mm,+1,GETDATE()) --adding one month advance to the current month

select @startDate_pre
select @endDate_pre

