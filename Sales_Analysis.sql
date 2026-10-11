SQL> CREATE TABLE customers (
  2      customer_id NUMBER PRIMARY KEY,
  3      customer_name VARCHAR2(50),
  4      city VARCHAR2(50),
  5      state VARCHAR2(50),
  6      customer_segment VARCHAR2(30)
  7  );

Table created.

SQL> CREATE TABLE products (
  2      product_id NUMBER PRIMARY KEY,
  3      product_name VARCHAR2(100),
  4      category VARCHAR2(50),
  5      unit_price NUMBER(10,2),
  6      cost_price NUMBER(10,2)
  7  );

Table created.

SQL> CREATE TABLE sales (
  2      sale_id NUMBER PRIMARY KEY,
  3      sale_date DATE,
  4      customer_id NUMBER,
  5      product_id NUMBER,
  6      quantity NUMBER,
  7      discount NUMBER(5,2),
  8      region VARCHAR2(30),
  9      payment_method VARCHAR2(30),
 10      FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
 11      FOREIGN KEY (product_id) REFERENCES products(product_id)
 12  );

Table created.

SQL> 
SQL> INSERT INTO customers VALUES
  2  (101, 'Arun Kumar', 'Chennai', 'Tamil Nadu', 'Regular');

1 row created.

SQL> 
SQL> INSERT INTO customers VALUES
  2  (102, 'Priya Sharma', 'Bangalore', 'Karnataka', 'Premium');

1 row created.

SQL> 
SQL> INSERT INTO customers VALUES
  2  (103, 'Rahul Singh', 'Mumbai', 'Maharashtra', 'Regular');

1 row created.

SQL> 
SQL> INSERT INTO customers VALUES
  2  (104, 'Divya Raj', 'Coimbatore', 'Tamil Nadu', 'Premium');

1 row created.

SQL> 
SQL> INSERT INTO customers VALUES
  2  (105, 'Karthik S', 'Hyderabad', 'Telangana', 'Regular');

1 row created.

SQL> 
SQL> INSERT INTO customers VALUES
  2  (106, 'Sneha Patel', 'Pune', 'Maharashtra', 'Premium');

1 row created.

SQL> 
SQL> INSERT INTO customers VALUES
  2  (107, 'Vijay Kumar', 'Madurai', 'Tamil Nadu', 'Regular');

1 row created.

SQL> 
SQL> INSERT INTO customers VALUES
  2  (108, 'Anjali Rao', 'Bangalore', 'Karnataka', 'Premium');

1 row created.

SQL> 
SQL> INSERT INTO customers VALUES
  2  (109, 'Suresh Babu', 'Chennai', 'Tamil Nadu', 'Regular');

1 row created.

SQL> 
SQL> INSERT INTO customers VALUES
  2  (110, 'Meena Devi', 'Kochi', 'Kerala', 'Premium');

1 row created.

SQL> 
SQL> COMMIT;

Commit complete.

SQL> INSERT INTO products VALUES
  2  (201, 'Laptop', 'Electronics', 60000, 45000);

1 row created.

SQL> 
SQL> INSERT INTO products VALUES
  2  (202, 'Mobile Phone', 'Electronics', 25000, 18000);

1 row created.

SQL> 
SQL> INSERT INTO products VALUES
  2  (203, 'Headphones', 'Accessories', 3000, 1800);

1 row created.

SQL> 
SQL> INSERT INTO products VALUES
  2  (204, 'Keyboard', 'Accessories', 2000, 1200);

1 row created.

SQL> 
SQL> INSERT INTO products VALUES
  2  (205, 'Office Chair', 'Furniture', 12000, 8000);

1 row created.

SQL> 
SQL> INSERT INTO products VALUES
  2  (206, 'Table', 'Furniture', 15000, 10000);

1 row created.

SQL> 
SQL> INSERT INTO products VALUES
  2  (207, 'Monitor', 'Electronics', 18000, 13000);

1 row created.

SQL> 
SQL> INSERT INTO products VALUES
  2  (208, 'Mouse', 'Accessories', 1200, 700);

1 row created.

SQL> 
SQL> INSERT INTO products VALUES
  2  (209, 'Printer', 'Electronics', 15000, 11000);

1 row created.

SQL> 
SQL> INSERT INTO products VALUES
  2  (210, 'Desk Lamp', 'Furniture', 2500, 1500);

1 row created.

SQL> 
SQL> COMMIT;

Commit complete.

SQL> INSERT INTO sales VALUES
  2  (1, DATE '2026-01-05', 101, 201, 1, 5, 'South', 'UPI');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (2, DATE '2026-01-10', 102, 202, 2, 10, 'South', 'Credit Card');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (3, DATE '2026-01-15', 103, 203, 3, 5, 'West', 'UPI');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (4, DATE '2026-01-20', 104, 205, 2, 8, 'South', 'Debit Card');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (5, DATE '2026-02-03', 105, 207, 1, 5, 'South', 'UPI');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (6, DATE '2026-02-08', 106, 202, 1, 10, 'West', 'Credit Card');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (7, DATE '2026-02-14', 107, 208, 5, 5, 'South', 'Cash');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (8, DATE '2026-02-18', 108, 201, 1, 7, 'South', 'UPI');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (9, DATE '2026-02-25', 109, 204, 4, 5, 'South', 'Debit Card');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (10, DATE '2026-03-02', 110, 206, 1, 10, 'South', 'Credit Card');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (11, DATE '2026-03-07', 101, 203, 2, 5, 'South', 'UPI');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (12, DATE '2026-03-12', 102, 209, 1, 8, 'South', 'Credit Card');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (13, DATE '2026-03-18', 103, 210, 3, 5, 'West', 'Cash');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (14, DATE '2026-03-25', 104, 202, 2, 10, 'South', 'UPI');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (15, DATE '2026-04-03', 105, 201, 1, 5, 'South', 'Credit Card');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (16, DATE '2026-04-10', 106, 205, 1, 8, 'West', 'Debit Card');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (17, DATE '2026-04-15', 107, 207, 2, 5, 'South', 'UPI');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (18, DATE '2026-04-20', 108, 203, 4, 5, 'South', 'Credit Card');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (19, DATE '2026-05-05', 109, 209, 2, 10, 'South', 'UPI');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (20, DATE '2026-05-12', 110, 206, 2, 8, 'South', 'Credit Card');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (21, DATE '2026-05-18', 101, 208, 5, 5, 'South', 'Cash');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (22, DATE '2026-05-25', 102, 201, 1, 7, 'South', 'UPI');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (23, DATE '2026-06-03', 103, 202, 2, 10, 'West', 'Credit Card');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (24, DATE '2026-06-10', 104, 207, 1, 5, 'South', 'UPI');

1 row created.

SQL> 
SQL> INSERT INTO sales VALUES
  2  (25, DATE '2026-06-18', 105, 204, 3, 5, 'South', 'Debit Card');

1 row created.

SQL> 
SQL> COMMIT;

Commit complete.

SQL> SELECT *
  2  FROM CUSTOMERS;

CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
CITY
--------------------------------------------------
STATE
--------------------------------------------------
CUSTOMER_SEGMENT
------------------------------
        101 Arun Kumar
Chennai
Tamil Nadu
Regular


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
CITY
--------------------------------------------------
STATE
--------------------------------------------------
CUSTOMER_SEGMENT
------------------------------
        102 Priya Sharma
Bangalore
Karnataka
Premium


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
CITY
--------------------------------------------------
STATE
--------------------------------------------------
CUSTOMER_SEGMENT
------------------------------
        103 Rahul Singh
Mumbai
Maharashtra
Regular


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
CITY
--------------------------------------------------
STATE
--------------------------------------------------
CUSTOMER_SEGMENT
------------------------------
        104 Divya Raj
Coimbatore
Tamil Nadu
Premium


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
CITY
--------------------------------------------------
STATE
--------------------------------------------------
CUSTOMER_SEGMENT
------------------------------
        105 Karthik S
Hyderabad
Telangana
Regular


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
CITY
--------------------------------------------------
STATE
--------------------------------------------------
CUSTOMER_SEGMENT
------------------------------
        106 Sneha Patel
Pune
Maharashtra
Premium


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
CITY
--------------------------------------------------
STATE
--------------------------------------------------
CUSTOMER_SEGMENT
------------------------------
        107 Vijay Kumar
Madurai
Tamil Nadu
Regular


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
CITY
--------------------------------------------------
STATE
--------------------------------------------------
CUSTOMER_SEGMENT
------------------------------
        108 Anjali Rao
Bangalore
Karnataka
Premium


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
CITY
--------------------------------------------------
STATE
--------------------------------------------------
CUSTOMER_SEGMENT
------------------------------
        109 Suresh Babu
Chennai
Tamil Nadu
Regular


CUSTOMER_ID CUSTOMER_NAME
----------- --------------------------------------------------
CITY
--------------------------------------------------
STATE
--------------------------------------------------
CUSTOMER_SEGMENT
------------------------------
        110 Meena Devi
Kochi
Kerala
Premium


10 rows selected.

SQL> SELECT *
  2  FROM PRODUCTS;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY                                           UNIT_PRICE COST_PRICE
-------------------------------------------------- ---------- ----------
       201
Laptop
Electronics                                             60000      45000

       202
Mobile Phone
Electronics                                             25000      18000

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY                                           UNIT_PRICE COST_PRICE
-------------------------------------------------- ---------- ----------

       203
Headphones
Accessories                                              3000       1800

       204
Keyboard

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY                                           UNIT_PRICE COST_PRICE
-------------------------------------------------- ---------- ----------
Accessories                                              2000       1200

       205
Office Chair
Furniture                                               12000       8000

       206

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY                                           UNIT_PRICE COST_PRICE
-------------------------------------------------- ---------- ----------
Table
Furniture                                               15000      10000

       207
Monitor
Electronics                                             18000      13000


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY                                           UNIT_PRICE COST_PRICE
-------------------------------------------------- ---------- ----------
       208
Mouse
Accessories                                              1200        700

       209
Printer
Electronics                                             15000      11000

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY                                           UNIT_PRICE COST_PRICE
-------------------------------------------------- ---------- ----------

       210
Desk Lamp
Furniture                                                2500       1500


10 rows selected.

SQL> SELECT *
  2  FROM SALES;

   SALE_ID SALE_DATE CUSTOMER_ID PRODUCT_ID   QUANTITY   DISCOUNT
---------- --------- ----------- ---------- ---------- ----------
REGION                         PAYMENT_METHOD
------------------------------ ------------------------------
         1 05-JAN-26         101        201          1          5
South                          UPI

         2 10-JAN-26         102        202          2         10
South                          Credit Card

         3 15-JAN-26         103        203          3          5
West                           UPI


   SALE_ID SALE_DATE CUSTOMER_ID PRODUCT_ID   QUANTITY   DISCOUNT
---------- --------- ----------- ---------- ---------- ----------
REGION                         PAYMENT_METHOD
------------------------------ ------------------------------
         4 20-JAN-26         104        205          2          8
South                          Debit Card

         5 03-FEB-26         105        207          1          5
South                          UPI

         6 08-FEB-26         106        202          1         10
West                           Credit Card


   SALE_ID SALE_DATE CUSTOMER_ID PRODUCT_ID   QUANTITY   DISCOUNT
---------- --------- ----------- ---------- ---------- ----------
REGION                         PAYMENT_METHOD
------------------------------ ------------------------------
         7 14-FEB-26         107        208          5          5
South                          Cash

         8 18-FEB-26         108        201          1          7
South                          UPI

         9 25-FEB-26         109        204          4          5
South                          Debit Card


   SALE_ID SALE_DATE CUSTOMER_ID PRODUCT_ID   QUANTITY   DISCOUNT
---------- --------- ----------- ---------- ---------- ----------
REGION                         PAYMENT_METHOD
------------------------------ ------------------------------
        10 02-MAR-26         110        206          1         10
South                          Credit Card

        11 07-MAR-26         101        203          2          5
South                          UPI

        12 12-MAR-26         102        209          1          8
South                          Credit Card


   SALE_ID SALE_DATE CUSTOMER_ID PRODUCT_ID   QUANTITY   DISCOUNT
---------- --------- ----------- ---------- ---------- ----------
REGION                         PAYMENT_METHOD
------------------------------ ------------------------------
        13 18-MAR-26         103        210          3          5
West                           Cash

        14 25-MAR-26         104        202          2         10
South                          UPI

        15 03-APR-26         105        201          1          5
South                          Credit Card


   SALE_ID SALE_DATE CUSTOMER_ID PRODUCT_ID   QUANTITY   DISCOUNT
---------- --------- ----------- ---------- ---------- ----------
REGION                         PAYMENT_METHOD
------------------------------ ------------------------------
        16 10-APR-26         106        205          1          8
West                           Debit Card

        17 15-APR-26         107        207          2          5
South                          UPI

        18 20-APR-26         108        203          4          5
South                          Credit Card


   SALE_ID SALE_DATE CUSTOMER_ID PRODUCT_ID   QUANTITY   DISCOUNT
---------- --------- ----------- ---------- ---------- ----------
REGION                         PAYMENT_METHOD
------------------------------ ------------------------------
        19 05-MAY-26         109        209          2         10
South                          UPI

        20 12-MAY-26         110        206          2          8
South                          Credit Card

        21 18-MAY-26         101        208          5          5
South                          Cash


   SALE_ID SALE_DATE CUSTOMER_ID PRODUCT_ID   QUANTITY   DISCOUNT
---------- --------- ----------- ---------- ---------- ----------
REGION                         PAYMENT_METHOD
------------------------------ ------------------------------
        22 25-MAY-26         102        201          1          7
South                          UPI

        23 03-JUN-26         103        202          2         10
West                           Credit Card

        24 10-JUN-26         104        207          1          5
South                          UPI


   SALE_ID SALE_DATE CUSTOMER_ID PRODUCT_ID   QUANTITY   DISCOUNT
---------- --------- ----------- ---------- ---------- ----------
REGION                         PAYMENT_METHOD
------------------------------ ------------------------------
        25 18-JUN-26         105        204          3          5
South                          Debit Card


25 rows selected.


SQL> -----1.TOTAL NUMBER OF SALES-----
SQL> SELECT COUNT(*) AS total_sales
  2  FROM sales;

TOTAL_SALES
-----------
         25

SQL> -----2.TOTAL QUANTITY SOLD-----
SQL> SELECT SUM(quantity) AS total_quantity_sold
  2  FROM sales;

TOTAL_QUANTITY_SOLD
-------------------
                 53

SQL> -----3.TOTAL CUSTOMERS-----
SQL> SELECT COUNT(*) AS total_customers
  2  FROM customers;

TOTAL_CUSTOMERS
---------------
             10
SQL> -----5.CALCULATE SALES REVENUE-----
SQL> SELECT 
  2      s.sale_id,
  3      p.product_name,
  4      s.quantity,
  5      p.unit_price,
  6      s.quantity * p.unit_price AS revenue
  7  FROM sales s
  8  JOIN products p
  9  ON s.product_id = p.product_id;

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE    REVENUE
---------- ---------- ----------
         1
Laptop
         1      60000      60000

         2
Mobile Phone
         2      25000      50000

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE    REVENUE
---------- ---------- ----------

         3
Headphones
         3       3000       9000

         4
Office Chair

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE    REVENUE
---------- ---------- ----------
         2      12000      24000

         5
Monitor
         1      18000      18000

         6

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE    REVENUE
---------- ---------- ----------
Mobile Phone
         1      25000      25000

         7
Mouse
         5       1200       6000


   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE    REVENUE
---------- ---------- ----------
         8
Laptop
         1      60000      60000

         9
Keyboard
         4       2000       8000

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE    REVENUE
---------- ---------- ----------

        10
Table
         1      15000      15000

        11
Headphones

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE    REVENUE
---------- ---------- ----------
         2       3000       6000

        12
Printer
         1      15000      15000

        13

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE    REVENUE
---------- ---------- ----------
Desk Lamp
         3       2500       7500

        14
Mobile Phone
         2      25000      50000


   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE    REVENUE
---------- ---------- ----------
        15
Laptop
         1      60000      60000

        16
Office Chair
         1      12000      12000

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE    REVENUE
---------- ---------- ----------

        17
Monitor
         2      18000      36000

        18
Headphones

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE    REVENUE
---------- ---------- ----------
         4       3000      12000

        19
Printer
         2      15000      30000

        20

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE    REVENUE
---------- ---------- ----------
Table
         2      15000      30000

        21
Mouse
         5       1200       6000


   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE    REVENUE
---------- ---------- ----------
        22
Laptop
         1      60000      60000

        23
Mobile Phone
         2      25000      50000

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE    REVENUE
---------- ---------- ----------

        24
Monitor
         1      18000      18000

        25
Keyboard

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE    REVENUE
---------- ---------- ----------
         3       2000       6000


25 rows selected.

SQL> -----6.CALCULATE DISCOUNT REVENUE-----
SQL> SELECT 
  2      s.sale_id,
  3      p.product_name,
  4      s.quantity,
  5      p.unit_price,
  6      s.discount,
  7      (s.quantity * p.unit_price) -
  8      ((s.quantity * p.unit_price) * s.discount / 100) AS net_sales
  9  FROM sales s
 10  JOIN products p
 11  ON s.product_id = p.product_id;

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   DISCOUNT  NET_SALES
---------- ---------- ---------- ----------
         1
Laptop
         1      60000          5      57000

         2
Mobile Phone
         2      25000         10      45000

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   DISCOUNT  NET_SALES
---------- ---------- ---------- ----------

         3
Headphones
         3       3000          5       8550

         4
Office Chair

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   DISCOUNT  NET_SALES
---------- ---------- ---------- ----------
         2      12000          8      22080

         5
Monitor
         1      18000          5      17100

         6

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   DISCOUNT  NET_SALES
---------- ---------- ---------- ----------
Mobile Phone
         1      25000         10      22500

         7
Mouse
         5       1200          5       5700


   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   DISCOUNT  NET_SALES
---------- ---------- ---------- ----------
         8
Laptop
         1      60000          7      55800

         9
Keyboard
         4       2000          5       7600

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   DISCOUNT  NET_SALES
---------- ---------- ---------- ----------

        10
Table
         1      15000         10      13500

        11
Headphones

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   DISCOUNT  NET_SALES
---------- ---------- ---------- ----------
         2       3000          5       5700

        12
Printer
         1      15000          8      13800

        13

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   DISCOUNT  NET_SALES
---------- ---------- ---------- ----------
Desk Lamp
         3       2500          5       7125

        14
Mobile Phone
         2      25000         10      45000


   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   DISCOUNT  NET_SALES
---------- ---------- ---------- ----------
        15
Laptop
         1      60000          5      57000

        16
Office Chair
         1      12000          8      11040

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   DISCOUNT  NET_SALES
---------- ---------- ---------- ----------

        17
Monitor
         2      18000          5      34200

        18
Headphones

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   DISCOUNT  NET_SALES
---------- ---------- ---------- ----------
         4       3000          5      11400

        19
Printer
         2      15000         10      27000

        20

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   DISCOUNT  NET_SALES
---------- ---------- ---------- ----------
Table
         2      15000          8      27600

        21
Mouse
         5       1200          5       5700


   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   DISCOUNT  NET_SALES
---------- ---------- ---------- ----------
        22
Laptop
         1      60000          7      55800

        23
Mobile Phone
         2      25000         10      45000

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   DISCOUNT  NET_SALES
---------- ---------- ---------- ----------

        24
Monitor
         1      18000          5      17100

        25
Keyboard

   SALE_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   DISCOUNT  NET_SALES
---------- ---------- ---------- ----------
         3       2000          5       5700


25 rows selected.

SQL> -----7.TOTAL REVENUE-----
SQL> SELECT 
  2      ROUND(SUM(
  3          (s.quantity * p.unit_price) -
  4          ((s.quantity * p.unit_price) * s.discount / 100)
  5      ), 2) AS total_revenue
  6  FROM sales s
  7  JOIN products p
  8  ON s.product_id = p.product_id;

TOTAL_REVENUE
-------------
       623995

SQL> -----8.PRODUCT WISE SALES-----
SQL> SELECT 
  2      p.product_name,
  3      SUM(s.quantity) AS total_quantity,
  4      ROUND(SUM(
  5          (s.quantity * p.unit_price) -
  6          ((s.quantity * p.unit_price) * s.discount / 100)
  7      ), 2) AS total_sales
  8  FROM sales s
  9  JOIN products p
 10  ON s.product_id = p.product_id
 11  GROUP BY p.product_name
 12  ORDER BY total_sales DESC;

PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY TOTAL_SALES
-------------- -----------
Laptop
             4      225600

Mobile Phone
             7      157500

Monitor
             4       68400


PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY TOTAL_SALES
-------------- -----------
Table
             3       41100

Printer
             3       40800

Office Chair
             3       33120


PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY TOTAL_SALES
-------------- -----------
Headphones
             9       25650

Keyboard
             7       13300

Mouse
            10       11400


PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY TOTAL_SALES
-------------- -----------
Desk Lamp
             3        7125


10 rows selected.

SQL> -----9.CATEGORY WISE SALES-----
SQL> SELECT 
  2      p.category,
  3      SUM(s.quantity) AS total_quantity,
  4      ROUND(SUM(
  5          (s.quantity * p.unit_price) -
  6          ((s.quantity * p.unit_price) * s.discount / 100)
  7      ), 2) AS total_sales
  8  FROM sales s
  9  JOIN products p
 10  ON s.product_id = p.product_id
 11  GROUP BY p.category
 12  ORDER BY total_sales DESC;

CATEGORY                                           TOTAL_QUANTITY TOTAL_SALES
-------------------------------------------------- -------------- -----------
Electronics                                                    18      492300
Furniture                                                       9       81345
Accessories                                                    26       50350

SQL> -----10.REGION WISE SALES-----
SQL> SELECT 
  2      region,
  3      COUNT(*) AS number_of_orders,
  4      SUM(quantity) AS total_quantity
  5  FROM sales
  6  GROUP BY region
  7  ORDER BY total_quantity DESC;

REGION                         NUMBER_OF_ORDERS TOTAL_QUANTITY
------------------------------ ---------------- --------------
South                                        20             43
West                                          5             10

SQL> -----11.CUSTOMER WISE SALES-----
SQL> SELECT 
  2      c.customer_name,
  3      c.customer_segment,
  4      COUNT(s.sale_id) AS total_orders,
  5      ROUND(SUM(
  6          (s.quantity * p.unit_price) -
  7          ((s.quantity * p.unit_price) * s.discount / 100)
  8      ), 2) AS total_spending
  9  FROM customers c
 10  JOIN sales s
 11  ON c.customer_id = s.customer_id
 12  JOIN products p
 13  ON s.product_id = p.product_id
 14  GROUP BY c.customer_name, c.customer_segment
 15  ORDER BY total_spending DESC;

CUSTOMER_NAME
--------------------------------------------------
CUSTOMER_SEGMENT               TOTAL_ORDERS TOTAL_SPENDING
------------------------------ ------------ --------------
Priya Sharma
Premium                                   3         114600

Divya Raj
Premium                                   3          84180

Karthik S
Regular                                   3          79800


CUSTOMER_NAME
--------------------------------------------------
CUSTOMER_SEGMENT               TOTAL_ORDERS TOTAL_SPENDING
------------------------------ ------------ --------------
Arun Kumar
Regular                                   3          68400

Anjali Rao
Premium                                   2          67200

Rahul Singh
Regular                                   3          60675


CUSTOMER_NAME
--------------------------------------------------
CUSTOMER_SEGMENT               TOTAL_ORDERS TOTAL_SPENDING
------------------------------ ------------ --------------
Meena Devi
Premium                                   2          41100

Vijay Kumar
Regular                                   2          39900

Suresh Babu
Regular                                   2          34600


CUSTOMER_NAME
--------------------------------------------------
CUSTOMER_SEGMENT               TOTAL_ORDERS TOTAL_SPENDING
------------------------------ ------------ --------------
Sneha Patel
Premium                                   2          33540


10 rows selected.

SQL> 
SQL> -----12.TOP 5 CUSTOMERS-----
SQL> SELECT *
  2  FROM (
  3      SELECT 
  4          c.customer_name,
  5          ROUND(SUM(
  6              (s.quantity * p.unit_price) -
  7              ((s.quantity * p.unit_price) * s.discount / 100)
  8          ), 2) AS total_spending
  9      FROM customers c
 10      JOIN sales s
 11      ON c.customer_id = s.customer_id
 12      JOIN products p
 13      ON s.product_id = p.product_id
 14      GROUP BY c.customer_name
 15      ORDER BY total_spending DESC
 16  )
 17  WHERE ROWNUM <= 5;

CUSTOMER_NAME                                      TOTAL_SPENDING
-------------------------------------------------- --------------
Priya Sharma                                               114600
Divya Raj                                                   84180
Karthik S                                                   79800
Arun Kumar                                                  68400
Anjali Rao                                                  67200

SQL> -----13.TOP 5 PRODUCTS-----
SQL> SELECT *
  2  FROM (
  3      SELECT 
  4          p.product_name,
  5          ROUND(SUM(
  6              (s.quantity * p.unit_price) -
  7              ((s.quantity * p.unit_price) * s.discount / 100)
  8          ), 2) AS total_sales
  9      FROM sales s
 10      JOIN products p
 11      ON s.product_id = p.product_id
 12      GROUP BY p.product_name
 13      ORDER BY total_sales DESC
 14  )
 15  WHERE ROWNUM <= 5;

PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_SALES
-----------
Laptop
     225600

Mobile Phone
     157500

Monitor
      68400


PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_SALES
-----------
Table
      41100

Printer
      40800


SQL> -----14.MONTHLY SALES----
SQL> SELECT 
  2      TO_CHAR(s.sale_date, 'YYYY-MM') AS sales_month,
  3      ROUND(SUM(
  4          (s.quantity * p.unit_price) -
  5          ((s.quantity * p.unit_price) * s.discount / 100)
  6      ), 2) AS monthly_sales
  7  FROM sales s
  8  JOIN products p
  9  ON s.product_id = p.product_id
 10  GROUP BY TO_CHAR(s.sale_date, 'YYYY-MM')
 11  ORDER BY sales_month;

SALES_M MONTHLY_SALES
------- -------------
2026-01        132630
2026-02        108700
2026-03         85125
2026-04        113640
2026-05        116100
2026-06         67800

6 rows selected.

SQL> -----15.PAYMENT METHOAD ANALYSIS-----
SQL> SELECT 
  2      payment_method,
  3      COUNT(*) AS number_of_orders
  4  FROM sales
  5  GROUP BY payment_method
  6  ORDER BY number_of_orders DESC;

PAYMENT_METHOD                 NUMBER_OF_ORDERS
------------------------------ ----------------
UPI                                          10
Credit Card                                   8
Debit Card                                    4
Cash                                          3

SQL> -----PROFIT ANALYSIS-----
SQL> -----16.PROFIT PER PRODUCT-----
SQL> SELECT 
  2      p.product_name,
  3      SUM(s.quantity) AS quantity_sold,
  4      ROUND(SUM(
  5          s.quantity * (p.unit_price - p.cost_price)
  6      ), 2) AS total_profit
  7  FROM sales s
  8  JOIN products p
  9  ON s.product_id = p.product_id
 10  GROUP BY p.product_name
 11  ORDER BY total_profit DESC;

PRODUCT_NAME
--------------------------------------------------------------------------------
QUANTITY_SOLD TOTAL_PROFIT
------------- ------------
Laptop
            4        60000

Mobile Phone
            7        49000

Monitor
            4        20000


PRODUCT_NAME
--------------------------------------------------------------------------------
QUANTITY_SOLD TOTAL_PROFIT
------------- ------------
Table
            3        15000

Printer
            3        12000

Office Chair
            3        12000


PRODUCT_NAME
--------------------------------------------------------------------------------
QUANTITY_SOLD TOTAL_PROFIT
------------- ------------
Headphones
            9        10800

Keyboard
            7         5600

Mouse
           10         5000


PRODUCT_NAME
--------------------------------------------------------------------------------
QUANTITY_SOLD TOTAL_PROFIT
------------- ------------
Desk Lamp
            3         3000


10 rows selected.

SQL> -----17.CATEGORY WISE PROFIT-----
SQL> SELECT 
  2      p.category,
  3      ROUND(SUM(
  4          s.quantity * (p.unit_price - p.cost_price)
  5      ), 2) AS total_profit
  6  FROM sales s
  7  JOIN products p
  8  ON s.product_id = p.product_id
  9  GROUP BY p.category
 10  ORDER BY total_profit DESC;

CATEGORY                                           TOTAL_PROFIT
-------------------------------------------------- ------------
Electronics                                              141000
Furniture                                                 30000
Accessories                                               21400

SQL> 
SQL> -----18.HIGHEST SELLING PRODUCT-----
SQL> SELECT *
  2  FROM (
  3      SELECT 
  4          p.product_name,
  5          SUM(s.quantity) AS quantity_sold
  6      FROM sales s
  7      JOIN products p
  8      ON s.product_id = p.product_id
  9      GROUP BY p.product_name
 10      ORDER BY quantity_sold DESC
 11  )
 12  WHERE ROWNUM = 1;

PRODUCT_NAME
--------------------------------------------------------------------------------
QUANTITY_SOLD
-------------
Mouse
           10


SQL> 
SQL> -----19.TOTAL SALES-----
SQL> SELECT ROUND(SUM(
  2  (s.quantity * p.unit_price)
  3  - ((s.quantity * p.unit_price) * s.discount / 100)), 2) AS total_sales
  4  FROM sales s
  5  JOIN products p
  6  ON s.product_id = p.product_id;

TOTAL_SALES
-----------
     623995

SQL> -----20.TOTAL PROFIT-----
SQL> SELECT ROUND(SUM(
  2      s.quantity * (p.unit_price - p.cost_price)), 2) AS total_profit
  3  FROM sales s
  4  JOIN products p
  5  ON s.product_id = p.product_id;

TOTAL_PROFIT
------------
      192400

SQL> -----21.AVERAGE ORDER VALUE-----
SQL> SELECT ROUND(AVG(
  2      (s.quantity * p.unit_price)
  3      - ((s.quantity * p.unit_price) * s.discount / 100)), 2) AS average_order_value
  4  FROM sales s
  5  JOIN products p
  6  ON s.product_id = p.product_id;

AVERAGE_ORDER_VALUE
-------------------
            24959.8

SQL> -----22.BEST REGION-----
SQL> SELECT region, total_sales
  2  FROM (
  3      SELECT s.region,
  4             ROUND(SUM(
  5                 (s.quantity * p.unit_price)
  6                 - ((s.quantity * p.unit_price) * s.discount / 100)
  7             ), 2) AS total_sales
  8      FROM sales s
  9      JOIN products p
 10      ON s.product_id = p.product_id
 11      GROUP BY s.region
 12      ORDER BY total_sales DESC
 13  )
 14  WHERE ROWNUM = 1;

REGION                         TOTAL_SALES
------------------------------ -----------
South                               529780

SQL> -----23.BEST CATEGORY----
SQL> SELECT category, total_sales
  2  FROM (
  3      SELECT p.category,
  4             ROUND(SUM(
  5                 (s.quantity * p.unit_price)
  6                 - ((s.quantity * p.unit_price) * s.discount / 100)), 2) AS total_sales
  7      FROM sales s
  8      JOIN products p
  9      ON s.product_id = p.product_id
 10      GROUP BY p.category
 11      ORDER BY total_sales DESC
 12  )
 13  WHERE ROWNUM = 1;

CATEGORY                                           TOTAL_SALES
-------------------------------------------------- -----------
Electronics                                             492300

SQL> -----24.BEST CUSTOMER-----
SQL> SELECT customer_name, total_sales
  2  FROM (
  3      SELECT c.customer_name,
  4             ROUND(SUM(
  5                 (s.quantity * p.unit_price)
  6                 - ((s.quantity * p.unit_price) * s.discount / 100)
  7             ), 2) AS total_sales
  8      FROM sales s
  9      JOIN customers c
 10      ON s.customer_id = c.customer_id
 11      JOIN products p
 12      ON s.product_id = p.product_id
 13      GROUP BY c.customer_name
 14      ORDER BY total_sales DESC
 15  )
 16  WHERE ROWNUM = 1;

CUSTOMER_NAME                                      TOTAL_SALES
-------------------------------------------------- -----------
Priya Sharma                                            114600