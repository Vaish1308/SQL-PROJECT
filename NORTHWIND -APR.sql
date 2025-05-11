/*1.List all products and their unit prices.*/
select productname,unitprice from Products
/*2.Find the top 5 most expensive products.*/
SELECT TOP 5 * FROM PRODUCTS
ORDER BY UnitPrice DESC
/*3.Retrieve the number of employees in the company */
SELECT COUNT(EMPLOYEEID) AS [NUMBER OF EMPLOYEES IN COMPANY] FROM Employees
/*4.List all orders placed in 1997.*/
SELECT * FROM Orders WHERE YEAR(ORDERDATE) = 1997
/*5.Calculate the total freight cost for orders shipped to the USA.*/
SELECT SUM(FREIGHT) AS [TOTAL FREIGHT COST FOR ORDERS SHIPPED TO USA] FROM Orders WHERE SHIPCOUNTRY = 'USA'
/*6.Show the total number of orders placed by each customer.*/
SELECT CUSTOMERID,COUNT(ORDERID) AS [TOTAL NUMBER OF ORDERS PLACED BY EACH CUSTOMER] FROM ORDERS
GROUP BY CustomerID
/*Find all customers who have never placed an order.*/
SELECT C.CUSTOMERID FROM CUSTOMERS C
LEFT JOIN ORDERS O ON C.CustomerID = O.CustomerID
WHERE O.OrderID IS NULL
/*List all employees with their full names*/
SELECT FIRSTNAME + ' ' +LASTNAME AS[EMPLOYEE NAME] FROM Employees
/*List all customers who have placed orders with a freight cost higher than $100.*/
SELECT CUSTOMERID FROM ORDERS WHERE FREIGHT >100
/*10. Calculate the average discount applied across all orders. */
SELECT AVG(DISCOUNT) FROM [Order Details]

/*11.Retrieve the top 3 customers by total number of orders. */
SELECT TOP 3 CUSTOMERID,COUNT(ORDERID) AS TOTALORDERS FROM ORDERS
GROUP BY CustomerID
ORDER BY TOTALORDERS DESC
/*12. Find the employee who has handled the most orders.*/
SELECT TOP 1 CUSTOMERID,COUNT(ORDERID) FROM ORDERS
GROUP BY CustomerID
/*13. Find the total number of orders shipped to each country.*/
SELECT SHIPCOUNTRY,COUNT(ORDERID) AS [TOTAL NUMER OF ORDERS SHIPPED TO EACH COUNTRY] FROM ORDERS
GROUP BY ShipCountry
/*16. Show the names of customers and their respective order counts, sorted by order count.*/
SELECT C.CONTACTNAME,COUNT(ORDERID) AS [TOTAL ORDER COUNT] FROM ORDERS O
INNER JOIN CUSTOMERS C
ON O.CUSTOMERID = C.CUSTOMERID
GROUP BY CONTACTNAME
ORDER BY [TOTAL ORDER COUNT] DESC
/*17. List the product categories along with the number of products in each category.*/
SELECT CATEGORYID,COUNT(PRODUCTID) AS [NO. OF PRODUCTS IN EACH CATEGORY] FROM PRODUCTS
/*18. Find the average unit price for products in each category.*/
SELECT CATEGORYID,AVG(UNITPRICE) AS [AVERAGE UNIT PRICE] FROM PRODUCTS
GROUP BY CategoryID
/*15. List all orders that were shipped after their required date.*/
SELECT ORDERID FROM ORDERS WHERE ShippedDate > OrderDate
/*14. List products that are discontinued.*/
SELECT PRODUCTNAME,Discontinued FROM PRODUCTS
WHERE Discontinued = 1

/*SET-2
1. Retrieve all details of the 'Products' table*/
SELECT * FROM PRODUCTS
/*2. Select only the 'ProductName' and 'UnitPrice' columns from the 'Products' table.*/
SELECT PRODUCTNAME,UNITPRICE FROM PRODUCTS
/*3. Retrieve all products where the UnitPrice is greater than 20.*/
SELECT * FROM PRODUCTS WHERE UNITPRICE >20
/*4. Retrieve all orders where the 'Freight' cost is less than or equal to 50*/
SELECT * FROM ORDERS WHERE FREIGHT <=50
/*5. Display the 'FirstName' and 'LastName' of Employees together as 'FullName'.*/
SELECT FIRSTNAME + ' ' + LASTNAME AS FULLNAME FROM EMPLOYEES  
/*6. Retrieve products where the 'UnitPrice' is greater than 20 AND the 'UnitsInStock' is less than 50.*/
SELECT PRODUCTNAME,UNITPRICE,UNITSINSTOCK FROM PRODUCTS WHERE UNITPRICE >20 AND UnitsInStock < 50
/*7. Retrieve all products where 'UnitPrice' is greater than 30 OR 'UnitsInStock' is greater than 100.*/
SELECT PRODUCTNAME,UNITPRICE,UNITSINSTOCK FROM PRODUCTS WHERE UNITPRICE >30 OR UnitsInStock > 100
/*8. Retrieve all customers whose 'CompanyName' starts with 'A'.*/
SELECT ContactName,COMPANYNAME FROM CUSTOMERS WHERE COMPANYNAME LIKE 'A%'

/*9. Retrieve employees whose last name contains 'an'.*/
SELECT EMPLOYEEID ,LASTNAME FROM EMPLOYEES WHERE LASTNAME LIKE '%AN'
/*10. Retrieve all orders where the 'ShipCountry' is either 'USA', 'UK', or 'Canada'.*/
SELECT ORDERID,SHIPCOUNTRY FROM ORDERS WHERE ShipCountry = 'USA' OR ShipCountry = 'UK' OR ShipCountry = 'CANADA' 
SELECT ORDERID,SHIPCOUNTRY FROM ORDERS WHERE SHIPCOUNTRY IN ('USA','UK','CANADA')
/*11. Retrieve all orders where 'OrderDate' is between '1997-01-01' and '1997-12-31'.*/
SELECT ORDERID,OrderDate FROM ORDERS WHERE ORDERDATE BETWEEN '1997-01-01' and '1997-12-31'
/*12. Retrieve all employees where the 'Region' is null.*/
SELECT EMPLOYEEID,REGION FROM EMPLOYEES WHERE REGION IS NULL
/*13. Retrieve all products sorted by 'UnitPrice' in descending order.*/
SELECT * FROM Customers
SELECT * FROM Employees
SELECT * FROM Orders
SELECT * FROM PRODUCTS
SELECT PRODUCTNAME, UNITPRICE FROM PRODUCTS
ORDER BY UNITPRICE DESC
/*14. Retrieve all employees ordered by 'LastName' alphabetically.*/
SELECT LASTNAME + ' ' + FIRSTNAME FROM EMPLOYEES 
ORDER BY LastName
/*1. Retrieve a list of distinct 'ShipCountry' values from the 'Orders' table.*/
SELECT DISTINCT(SHIPCOUNTRY) FROM Orders
/*2. Get a distinct list of customer cities from the 'Customers' table.*/
SELECT DISTINCT(CITY) FROM Customers
/*3. Count the total number of orders in the 'Orders' table. */
SELECT COUNT(ORDERID) AS TOTALORDERS FROM Orders
/*4. Find the average 'UnitPrice' of all products in the 'Products' table.*/
SELECT AVG(UNITPRICE) AS [AVERAGE UNIT PRICE] FROM PRODUCTS
/*5. Get the total number of units in stock across all products.*/
SELECT SUM(UNITSINSTOCK) AS [NUMBER OF UNITS IN STOCK] FROM PRODUCTS
/*6. Find the product with the maximum and Minimum 'UnitPrice' using a single query.*/
SELECT MAX(UNITPRICE) AS [MAXIMUM UNIT PRICE],MIN(UNITPRICE) AS [MINIMUM UNIT PRICE] FROM PRODUCTS
/*7. Find the minimum 'Freight' cost in the 'Orders' table.*/
SELECT MIN(FREIGHT) AS [MINIMUM FREIGHT COST] FROM Orders
Group By