SELECT * FROM EmployeeDetail
--SIMPLE PAGINATION USING OFFSET AND FETCH (FETCH==SKIP && OFFSET==(TAKE))--
select * from EmployeeInfo
order by EmpID
OFFSET 2 rows fetch next 5 rows only

--PAGINATION--(SAME AS LINQ)
DECLARE @PageNumber AS INT
DECLARE @RowsOfPage AS INT
SET @PageNumber=2
SET @RowsOfPage=4
SELECT EmpID,Salary,Experience FROM EmployeeDetail
ORDER BY EmpID 
OFFSET (@PageNumber-1)*@RowsOfPage ROWS
FETCH NEXT @RowsOfPage ROWS ONLY

--CREATE TABLE EMPLOYEE COMPANY DETAIL--
CREATE TABLE EmployeeCompany(
EmpID INT IDENTITY(1,1) PRIMARY KEY,
COMPANYNAME VARCHAR(50) NOT NULL,
COMPANYREGNO INT NOT NULL,
JOININGDATE DATE NOT NULL,
FOREIGN KEY (EmpId) REFERENCES EmployeeDetail(EmpID))

select * from EmployeeCompany

insert into EmployeeCompany (COMPANYNAME , COMPANYREGNO , JOININGDATE) values('NetSolutions','2345','2/21/2019')
insert into EmployeeCompany (COMPANYNAME , COMPANYREGNO , JOININGDATE) values('TCS','0005','2/21/2020')
insert into EmployeeCompany (COMPANYNAME , COMPANYREGNO , JOININGDATE) values('WIPRO','1000','2/21/2018')
insert into EmployeeCompany (COMPANYNAME , COMPANYREGNO , JOININGDATE) values('INFOSYS','1005','2/21/2020')
insert into EmployeeCompany (COMPANYNAME , COMPANYREGNO , JOININGDATE) values('ACCENTURE','0004','2/21/2018')
insert into EmployeeCompany (COMPANYNAME , COMPANYREGNO , JOININGDATE) values('TCS','0005','2/21/2016')
insert into EmployeeCompany (COMPANYNAME , COMPANYREGNO , JOININGDATE) values('NetSolutions','2345','2/21/2017')
insert into EmployeeCompany (COMPANYNAME , COMPANYREGNO , JOININGDATE) values('WIPRO','1000','2/21/2019')
insert into EmployeeCompany (COMPANYNAME , COMPANYREGNO , JOININGDATE) values('ACCENTURE','0004','2/21/2018')
insert into EmployeeCompany (COMPANYNAME , COMPANYREGNO , JOININGDATE) values('INFOSYS','1005','2/21/2019')

--INNER JOIN(multi) EmployeeCompany && EmployeeDetail WITH SELECTED COLUMNS FROM BOTH TABLES--
SELECT EmployeeInfo.FirstName,EmployeeInfo.LastName,EmployeeCompany.COMPANYNAME , EmployeeCompany.JOININGDATE , EmployeeCompany.COMPANYREGNO , EmployeeDetail.Department ,EmployeeDetail.Salary
FROM EmployeeCompany
INNER JOIN EmployeeDetail ON EmployeeCompany.EmpID=EmployeeDetail.EmpID
INNER JOIN EmployeeInfo ON EmployeeCompany.EmpID=EmployeeInfo.EmpID

--procedure on INNER JOIN
execute INNERJOIN 

--VIEW(MULTI inner join) COMPANY = NetSolutions or TCS
SELECT * FROM [onCompanyName]


--UNION ALL AND UNION EXAMPLE
SELECT EmpID FROM EmployeeInfo
WHERE FirstName='SHUBHAM'
UNION ALL
SELECT EmpID FROM EmployeeCompany
WHERE COMPANYNAME='NETSOLUTIONS'
UNION ALL
SELECT EmpID FROM EmployeeDetail
WHERE Department = 'DOTNET' OR Department = 'PYTHON'

--VIEW rightjoin (EmployeeCompany and EmployeeDetail)
--ALL ROWS FROM RIGHT TABLE(EmployeeDetail)
select * from rightJoin

--VIEW leftjoin (EmployeeInfo and EmployeeCompany)
--ALL ROWS FROM LEFT TABLE(EmployeeInfo)
select * from leftJoin


