
	SELECT	
	o.OrderID,
	o.OrderDate,
	c.CustomerID,
	c.CompanyName,
	c.Country,
	p.ProductID,
	p.ProductName,
	cat.CategoryName,
	od.Quantity,
	od.UnitPrice,
	od.Discount,
	(od.Quantity*od.UnitPrice) AS revenue

	FROM Orders o
	JOIN Customers c
	ON  c.CustomerID = o.CustomerID

	JOIN [Order Details] od
	ON o.OrderID = od.OrderID

	JOIN Products p
	ON  od.ProductID = p.ProductID

	JOIN Categories cat
	ON p.CategoryID = cat.CategoryID;
