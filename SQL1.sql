--Question 1)
Select *
From Customers

--Question 2) (Assuming you didn't want all product columns, just the columns that were mentioned)
Select ProductName, UnitPrice
From Products
Order By UnitPrice, ProductName;

--Question 3)
Select ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder
From Products
Where Discontinued = 1;

--Question 4) (no name in question for 3rd column)
Select customerID, CompanyName, Substring(CompanyName,1,8) As Company8
From Customers

--Question 5)
Select Top 10 Freight, CustomerID
From Orders
Order By Freight desc

--Question 6)
Select CustomerID, CompanyName
From Customers
Where CompanyName Like '%Market%'

--Question 7)
Select LastName, FirstName, lower(left(FirstName,1)) + '.' + lower(LastName) + '@northwind.com' As EmployeeEmail
From Employees
order by LastName 

--Question 8)
Select CompanyName, Country
From Customers
Where Country IN ('France', 'Germany', 'UK', 'USA');

--Question 9)
Select Top 5 Percent Freight
From Orders
Order By Freight DESC

--Question 10)
Select LastName, HomePhone, Notes
From Employees
Where Notes like '%German%'

--Question 11)
Select OrderID, OrderDate
From Orders
Where OrderDate between '2014-07-01' And '2014-07-31'

--Question 12)
Select OrderID, OrderDate
From Orders
Where OrderDate like '2014-07-__'

--Question 13)
Select OrderID
From Orders
Where ShippedDate Is Null;

--Question 14)
Select Distinct CustomerID
From Orders

--Question 15)
Select Distinct CustomerID, City, Region, PostalCode
From Customers
Order By City, CustomerID
