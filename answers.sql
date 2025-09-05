-- Question 1: Employees with office info (INNER JOIN)
SELECT e.firstName,       -- Employee first name
       e.lastName,        -- Employee last name
       e.email,           -- Employee email
       e.officeCode       -- Office code they belong to
FROM employees e
INNER JOIN offices o      -- Join offices table
  ON e.officeCode = o.officeCode;


--  Question 2: Products with product line info (LEFT JOIN)
SELECT p.productName,     -- Product name
       p.productVendor,   -- Vendor name
       p.productLine      -- Product line name
FROM products p
LEFT JOIN productlines pl -- Include all products, even if product line missing
  ON p.productLine = pl.productLine;


-- Question 3: First 10 orders with customer info (RIGHT JOIN)
SELECT o.orderDate,       -- Date when order was placed
       o.shippedDate,     -- Date when order was shipped
       o.status,          -- Current status of the order
       o.customerNumber   -- Customer ID linked to the order
FROM customers c
RIGHT JOIN orders o       -- Include all orders, even if customer missing
  ON c.customerNumber = o.customerNumber
LIMIT 10;
