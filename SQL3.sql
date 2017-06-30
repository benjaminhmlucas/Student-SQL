--Question 1
Select c.CustomerID, ContactName, Address, City, Region, 
	PostalCode, OrderID, OrderDate 
From Customers c JOIN Orders o ON c.CustomerID = o.CustomerID
Where OrderDate like '2014-07-__'

--Question 2
Select c.CustomerID, ContactName, Address, City, Region, 
	PostalCode, OrderID, OrderDate  
From Customers c, Orders o 
Where (c.CustomerID = o.CustomerID) 
	AND (OrderDate between '2014-07-01' and '2014-07-31')

--Question 3
Select c.CustomerID, CompanyName, OrderID
From customers c LEFT JOIN orders o 
	On c.CustomerID = o.CustomerID
order by OrderID

--Question 4
Select FirstName + ' ' + LastName as EmployeeName, c.CompanyName as CustomerName, 
	OrderDate as OrderedDate, ShippedDate, RequiredDate, p.ProductID, ProductName,
	s.SupplierID, s.CompanyName as SupplierName, ShipperID, sh.CompanyName as ShipperName
From Employees e join Orders o on e.EmployeeID = o.EmployeeID 
	join Customers c on o.CustomerID = c.CustomerID
	join OrderDetails od on o.OrderID = od.OrderID
	join Products p on od.ProductID = p.ProductID
	join Suppliers s on p.SupplierID = s.SupplierID 
	join Shippers sh on o.ShipVia = sh.ShipperID
Where (s.SupplierID = 12) and (e.EmployeeID = 2) 
Order By OrderDate, c.CustomerID

--Question 5
Select o.OrderID, CustomerID, OrderDate, UnitPrice, Quantity
From orders o join OrderDetails od on o.orderID = od.orderid
where Quantity > 12

--Question 6 
Select CompanyName, 'Outside USA' as Country
From Customers
Where Country <> 'USA'
	UNION
Select CompanyName, 'Inside USA' as Country
From Customers
Where Country = 'USA'

--Question 7 
Select FirstName + ' ' + LastName as EmployeeName, JobDescription
From Employees e join Jobs j on e.Jobid = j.JobId

--Question 8
Select distinct o.OrderID as orderID, e.EmployeeID as emlpoyeeID, 
	c.CustomerID as customerID, OrderDate
From Employees e join Orders o on e.EmployeeID = o.EmployeeID
	join Customers c on o.CustomerID = c.CustomerID
Where OrderDate < '2014-01-01'

