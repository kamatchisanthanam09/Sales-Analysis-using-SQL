CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(50),
    city VARCHAR2(50),
    state VARCHAR2(50),
    customer_segment VARCHAR2(30)
);

CREATE TABLE products (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(100),
    category VARCHAR2(50),
    unit_price NUMBER(10,2),
    cost_price NUMBER(10,2)
);

CREATE TABLE sales (
    sale_id NUMBER PRIMARY KEY,
    sale_date DATE,
    customer_id NUMBER,
    product_id NUMBER,
    quantity NUMBER,
    discount NUMBER(5,2),
    region VARCHAR2(30),
    payment_method VARCHAR2(30),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(101, 'Arun Kumar', 'Chennai', 'Tamil Nadu', 'Regular');

INSERT INTO customers VALUES
(102, 'Priya Sharma', 'Bangalore', 'Karnataka', 'Premium');

INSERT INTO customers VALUES
(103, 'Rahul Singh', 'Mumbai', 'Maharashtra', 'Regular');

INSERT INTO customers VALUES
(104, 'Divya Raj', 'Coimbatore', 'Tamil Nadu', 'Premium');

INSERT INTO customers VALUES
(105, 'Karthik S', 'Hyderabad', 'Telangana', 'Regular');

INSERT INTO customers VALUES
(106, 'Sneha Patel', 'Pune', 'Maharashtra', 'Premium');

INSERT INTO customers VALUES
(107, 'Vijay Kumar', 'Madurai', 'Tamil Nadu', 'Regular');

INSERT INTO customers VALUES
(108, 'Anjali Rao', 'Bangalore', 'Karnataka', 'Premium');

INSERT INTO customers VALUES
(109, 'Suresh Babu', 'Chennai', 'Tamil Nadu', 'Regular');

INSERT INTO customers VALUES
(110, 'Meena Devi', 'Kochi', 'Kerala', 'Premium');

COMMIT;

INSERT INTO products VALUES
(201, 'Laptop', 'Electronics', 60000, 45000);

INSERT INTO products VALUES
(202, 'Mobile Phone', 'Electronics', 25000, 18000);

INSERT INTO products VALUES
(203, 'Headphones', 'Accessories', 3000, 1800);

INSERT INTO products VALUES
(204, 'Keyboard', 'Accessories', 2000, 1200);

INSERT INTO products VALUES
(205, 'Office Chair', 'Furniture', 12000, 8000);

INSERT INTO products VALUES
(206, 'Table', 'Furniture', 15000, 10000);

INSERT INTO products VALUES
(207, 'Monitor', 'Electronics', 18000, 13000);

INSERT INTO products VALUES
(208, 'Mouse', 'Accessories', 1200, 700);

INSERT INTO products VALUES
(209, 'Printer', 'Electronics', 15000, 11000);

INSERT INTO products VALUES
(210, 'Desk Lamp', 'Furniture', 2500, 1500);

COMMIT;

INSERT INTO sales VALUES
(1, DATE '2026-01-05', 101, 201, 1, 5, 'South', 'UPI');

INSERT INTO sales VALUES
(2, DATE '2026-01-10', 102, 202, 2, 10, 'South', 'Credit Card');

INSERT INTO sales VALUES
(3, DATE '2026-01-15', 103, 203, 3, 5, 'West', 'UPI');

INSERT INTO sales VALUES
(4, DATE '2026-01-20', 104, 205, 2, 8, 'South', 'Debit Card');

INSERT INTO sales VALUES
(5, DATE '2026-02-03', 105, 207, 1, 5, 'South', 'UPI');

INSERT INTO sales VALUES
(6, DATE '2026-02-08', 106, 202, 1, 10, 'West', 'Credit Card');

INSERT INTO sales VALUES
(7, DATE '2026-02-14', 107, 208, 5, 5, 'South', 'Cash');

INSERT INTO sales VALUES
(8, DATE '2026-02-18', 108, 201, 1, 7, 'South', 'UPI');

INSERT INTO sales VALUES
(9, DATE '2026-02-25', 109, 204, 4, 5, 'South', 'Debit Card');

INSERT INTO sales VALUES
(10, DATE '2026-03-02', 110, 206, 1, 10, 'South', 'Credit Card');

INSERT INTO sales VALUES
(11, DATE '2026-03-07', 101, 203, 2, 5, 'South', 'UPI');

INSERT INTO sales VALUES
(12, DATE '2026-03-12', 102, 209, 1, 8, 'South', 'Credit Card');

INSERT INTO sales VALUES
(13, DATE '2026-03-18', 103, 210, 3, 5, 'West', 'Cash');

INSERT INTO sales VALUES
(14, DATE '2026-03-25', 104, 202, 2, 10, 'South', 'UPI');

INSERT INTO sales VALUES
(15, DATE '2026-04-03', 105, 201, 1, 5, 'South', 'Credit Card');

INSERT INTO sales VALUES
(16, DATE '2026-04-10', 106, 205, 1, 8, 'West', 'Debit Card');

INSERT INTO sales VALUES
(17, DATE '2026-04-15', 107, 207, 2, 5, 'South', 'UPI');

INSERT INTO sales VALUES
(18, DATE '2026-04-20', 108, 203, 4, 5, 'South', 'Credit Card');

INSERT INTO sales VALUES
(19, DATE '2026-05-05', 109, 209, 2, 10, 'South', 'UPI');

INSERT INTO sales VALUES
(20, DATE '2026-05-12', 110, 206, 2, 8, 'South', 'Credit Card');

INSERT INTO sales VALUES
(21, DATE '2026-05-18', 101, 208, 5, 5, 'South', 'Cash');

INSERT INTO sales VALUES
(22, DATE '2026-05-25', 102, 201, 1, 7, 'South', 'UPI');

INSERT INTO sales VALUES
(23, DATE '2026-06-03', 103, 202, 2, 10, 'West', 'Credit Card');

INSERT INTO sales VALUES
(24, DATE '2026-06-10', 104, 207, 1, 5, 'South', 'UPI');

INSERT INTO sales VALUES
(25, DATE '2026-06-18', 105, 204, 3, 5, 'South', 'Debit Card');

COMMIT;

1.Total number of sales
SELECT COUNT(*) AS total_sales
FROM sales;

2.Total quantity sold 
SELECT SUM(quantity) AS total_quantity_sold
FROM sales;

3.Total customers
SELECT COUNT(*) AS total_customers
FROM customers;

4.Total products
SELECT COUNT(*) AS total_products
FROM products;

5.Calculate Sales Revenue
SELECT 
    s.sale_id,
    p.product_name,
    s.quantity,
    p.unit_price,
    s.quantity * p.unit_price AS revenue
FROM sales s
JOIN products p
ON s.product_id = p.product_id;

6.Calculate Discounted Revenue
SELECT 
    s.sale_id,
    p.product_name,
    s.quantity,
    p.unit_price,
    s.discount,
    (s.quantity * p.unit_price) -
    ((s.quantity * p.unit_price) * s.discount / 100) AS net_sales
FROM sales s
JOIN products p
ON s.product_id = p.product_id;

7.Total Revenue
SELECT 
    ROUND(SUM(
        (s.quantity * p.unit_price) -
        ((s.quantity * p.unit_price) * s.discount / 100)
    ), 2) AS total_revenue
FROM sales s
JOIN products p
ON s.product_id = p.product_id;

8.Product-wise Sales
SELECT 
    p.product_name,
    SUM(s.quantity) AS total_quantity,
    ROUND(SUM(
        (s.quantity * p.unit_price) -
        ((s.quantity * p.unit_price) * s.discount / 100)
    ), 2) AS total_sales
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC;

9.Category-wise Sales
SELECT 
    p.category,
    SUM(s.quantity) AS total_quantity,
    ROUND(SUM(
        (s.quantity * p.unit_price) -
        ((s.quantity * p.unit_price) * s.discount / 100)
    ), 2) AS total_sales
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sales DESC;

10.Region-wise Sales
SELECT 
    region,
    COUNT(*) AS number_of_orders,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY region
ORDER BY total_quantity DESC;

11.Customer-wise Sales
SELECT 
    c.customer_name,
    c.customer_segment,
    COUNT(s.sale_id) AS total_orders,
    ROUND(SUM(
        (s.quantity * p.unit_price) -
        ((s.quantity * p.unit_price) * s.discount / 100)
    ), 2) AS total_spending
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id
JOIN products p
ON s.product_id = p.product_id
GROUP BY c.customer_name, c.customer_segment
ORDER BY total_spending DESC;

12.Top 5 Customers
SELECT *
FROM (
    SELECT 
        c.customer_name,
        ROUND(SUM(
            (s.quantity * p.unit_price) -
            ((s.quantity * p.unit_price) * s.discount / 100)
        ), 2) AS total_spending
    FROM customers c
    JOIN sales s
    ON c.customer_id = s.customer_id
    JOIN products p
    ON s.product_id = p.product_id
    GROUP BY c.customer_name
    ORDER BY total_spending DESC
)
WHERE ROWNUM <= 5;

13.Top 5 Products
SELECT *
FROM (
    SELECT 
        p.product_name,
        ROUND(SUM(
            (s.quantity * p.unit_price) -
            ((s.quantity * p.unit_price) * s.discount / 100)
        ), 2) AS total_sales
    FROM sales s
    JOIN products p
    ON s.product_id = p.product_id
    GROUP BY p.product_name
    ORDER BY total_sales DESC
)
WHERE ROWNUM <= 5;

14.Monthly Sales
SELECT 
    TO_CHAR(s.sale_date, 'YYYY-MM') AS sales_month,
    ROUND(SUM(
        (s.quantity * p.unit_price) -
        ((s.quantity * p.unit_price) * s.discount / 100)
    ), 2) AS monthly_sales
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY TO_CHAR(s.sale_date, 'YYYY-MM')
ORDER BY sales_month;

15.Payment Method Analysis
SELECT 
    payment_method,
    COUNT(*) AS number_of_orders
FROM sales
GROUP BY payment_method
ORDER BY number_of_orders DESC;

Profit Analysis

16.Profit per product:
SELECT 
    p.product_name,
    SUM(s.quantity) AS quantity_sold,
    ROUND(SUM(
        s.quantity * (p.unit_price - p.cost_price)
    ), 2) AS total_profit
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_profit DESC;

17.Category-wise Profit
SELECT 
    p.category,
    ROUND(SUM(
        s.quantity * (p.unit_price - p.cost_price)
    ), 2) AS total_profit
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY total_profit DESC;

18.Highest Selling Product
SELECT *
FROM (
    SELECT 
        p.product_name,
        SUM(s.quantity) AS quantity_sold
    FROM sales s
    JOIN products p
    ON s.product_id = p.product_id
    GROUP BY p.product_name
    ORDER BY quantity_sold DESC
)
WHERE ROWNUM = 1;

19.Total sales 
SELECT ROUND(SUM(
(s.quantity * p.unit_price)
- ((s.quantity * p.unit_price) * s.discount / 100)), 2) AS total_sales
FROM sales s
JOIN products p
ON s.product_id = p.product_id;

20.TOTAL PROFIT 
SELECT ROUND(SUM(
    s.quantity * (p.unit_price - p.cost_price)), 2) AS total_profit
FROM sales s
JOIN products p
ON s.product_id = p.product_id;

 21.Average Order Value
SELECT ROUND(AVG(
    (s.quantity * p.unit_price)
    - ((s.quantity * p.unit_price) * s.discount / 100)), 2) AS average_order_value
FROM sales s
JOIN products p
ON s.product_id = p.product_id;


 22.Best Region
SELECT region, total_sales
FROM (
    SELECT s.region,
           ROUND(SUM(
               (s.quantity * p.unit_price)
               - ((s.quantity * p.unit_price) * s.discount / 100)
           ), 2) AS total_sales
    FROM sales s
    JOIN products p
    ON s.product_id = p.product_id
    GROUP BY s.region
    ORDER BY total_sales DESC
)
WHERE ROWNUM = 1;


23.Best Category
SELECT category, total_sales
FROM (
    SELECT p.category,
           ROUND(SUM(
               (s.quantity * p.unit_price)
               - ((s.quantity * p.unit_price) * s.discount / 100)), 2) AS total_sales
    FROM sales s
    JOIN products p
    ON s.product_id = p.product_id
    GROUP BY p.category
    ORDER BY total_sales DESC
)
WHERE ROWNUM = 1;


24.Best Customer
SELECT customer_name, total_sales
FROM (
    SELECT c.customer_name,
           ROUND(SUM(
               (s.quantity * p.unit_price)
               - ((s.quantity * p.unit_price) * s.discount / 100)
           ), 2) AS total_sales
    FROM sales s
    JOIN customers c
    ON s.customer_id = c.customer_id
    JOIN products p
    ON s.product_id = p.product_id
    GROUP BY c.customer_name
    ORDER BY total_sales DESC
)
WHERE ROWNUM = 1;