--question 1
Select avg(UnitPrice) as AVG, min(UnitPrice) as MIN,max(UnitPrice) as MAX
From Products

--question 2
Select CustomerID, avg(Freight) as AvgFreight
From Orders
group by CustomerID

--question 3
Select CustomerID, round(avg(Freight),2) as AvgFreight
From Orders
group by CustomerID
having avg(freight) > 100
order by avg(freight)

--question 4
Select e.EmployeeID, FirstName + ' ' + lastName as employeeName, max(OrderDate) as recentOrder
From orders o join employees e on o.EmployeeID = e.EmployeeID
Group By e.EmployeeID, LastName, FirstName 
Order By e.EmployeeID

--question 5
Select ProductID, sum(Quantity) as amountOrdered
From orders o join OrderDetails od on o.OrderID = od.OrderID
Group By ProductID
Having sum(Quantity) > 50

--question 6
Select OrderID, 
	sum(UnitPrice * Quantity) as 'Full Retail Price',
	cast(sum( ( (UnitPrice * Quantity) - ( (UnitPrice * Quantity) * Discount)) ) as decimal(10,2)) as 'Final Price'
From OrderDetails
Group By OrderID

--question 7
Select p.ProductID, ProductName, ShipperID, s.CompanyName, count(ShipperID) as 'Shipper Used'
From Shippers s 
	join Orders o on ShipperID = ShipVia
	join OrderDetails od on o.OrderID = od.OrderID
	join Products p on od.ProductID = p.ProductID
Group By p.ProductID, ProductName, ShipperID, s.CompanyName 
Order By ProductID

