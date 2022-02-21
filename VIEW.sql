--VIEW
alter VIEW [onCompanyName] AS
SELECT EmployeeCompany.COMPANYNAME, EmployeeInfo.FirstName , EmployeeDetail.Department
FROM EmployeeCompany 
inner join EmployeeInfo on EmployeeCompany.EmpID = EmployeeInfo.EmpID
inner join EmployeeDetail on EmployeeCompany.EmpID=EmployeeDetail.EmpID
WHERE EmployeeCompany.COMPANYNAME='NetSolutions' or EmployeeCompany.COMPANYNAME='TCS';


SELECT * FROM [onCompanyName]