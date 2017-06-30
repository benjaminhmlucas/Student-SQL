--question 1
Select count(*) as 'No. of Orders'
From orders
where ShippedDate > RequiredDate

--question 2
Select ProductID, ProductName, UnitsInStock, CategoryID
From Products
where 
		(
			CategoryID = 2
		) 
	AND 
		(
			UnitsInStock > 
			(Select avg(UnitsInStock)
			From Products)
			
		)

--question 3
Select ProductID, ProductName, UnitsInStock, CategoryID
From Products
where UnitsInStock > 
		(Select avg(UnitsInStock)
		From Products
		where CategoryID = 2)

--question 4
select CustomerID, ContactName, Country
from Customers
where country <> ALL
		(select country
		from customers
		where country = 'USA'
		or country ='UK'
		or country ='Ausstralia'
		or country ='Canada')

--question 5
select *
from Customers 
where CustomerID not in
(select CustomerID
from orders)

--question 6
select EmployeeID, FirstName + ' ' + LastName as 'Employee Name'
from Employees
where ReportsTo = 2
order by LastName

--question 6
select CustomerID, CompanyName, ContactName
from Customers
where  len(companyName) < 13