alter VIEW rightJoin as
SELECT EmployeeCompany.COMPANYNAME , EmployeeDetail.Department
from EmployeeCompany
right join EmployeeDetail on EmployeeCompany.EmpID = EmployeeDetail.EmpID


select * from rightJoin