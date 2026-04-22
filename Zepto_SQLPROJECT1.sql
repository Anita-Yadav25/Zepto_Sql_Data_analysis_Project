create database Zepto_ecomm;
use Zepto_ecomm;

SET GLOBAL local_infile = 1;

CREATE TABLE Zepto (
    sku_id INT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(150),
    name VARCHAR(150),
    mrp DECIMAL(10,2),
    discountPercent DECIMAL(5,2),
    availableQuantity INT,
    discountedSellingPrice DECIMAL(10,2),
    weightInGms INT,
    outOfStock BOOLEAN,
    quantity INT
);

LOAD DATA LOCAL INFILE 'C:/Users/user/Downloads/zepto_v1.csv'
INTO TABLE Zepto
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(category, name, mrp, discountPercent, availableQuantity, discountedSellingPrice, weightInGms, @outOfStock, quantity)
SET outOfStock = CASE 
    WHEN @outOfStock = 'True' THEN 1
    WHEN @outOfStock = 'FALSE' THEN 0
    ELSE 0
END;

# Data Exploration
Select count(*)from zepto;

# Sample Data
 select * from zepto
 limit 10;

# Check null values

SELECT * FROM zepto
WHERE name IS NULL
OR
category IS NULL
OR
mrp IS NULL
OR
discountPercent IS NULL
OR
discountedSellingPrice IS NULL
OR
weightInGms IS NULL
OR
availableQuantity IS NULL
OR
outOfStock IS NULL
OR
quantity IS NULL;

#different product categories

SELECT DISTINCT category
FROM zepto
ORDER BY category;

# products in stock vs out of stock

SELECT outOfStock, COUNT(sku_id)
FROM zepto
GROUP BY outOfStock;

#product names present multiple times

SELECT name, COUNT(sku_id) AS "Number of SKUs"
FROM zepto
GROUP BY name
HAVING count(sku_id) > 1
ORDER BY count(sku_id) DESC;

#data cleaning

#products with price = 0
SELECT * FROM zepto
WHERE mrp <= 0 OR discountedSellingPrice <= 0;

DELETE FROM zepto 
WHERE sku_id IN (
    SELECT sku_id FROM (
        SELECT sku_id FROM zepto WHERE mrp = 0
    ) AS temp
);
SET SQL_SAFE_UPDATES = 0;
# convert paise to rupees
UPDATE zepto
SET mrp = mrp / 100.0,
discountedSellingPrice = discountedSellingPrice / 100.0;

SELECT mrp, discountedSellingPrice FROM zepto;

## data analysis

# Q1. Find the top 10 best-value products based on the discount percentage.

SELECT DISTINCT name, mrp, discountPercent
FROM zepto
ORDER BY discountPercent DESC
LIMIT 10;

#Q2.What are the Products with High MRP but Out of Stock

SELECT distinct name, mrp, quantity
FROM zepto
WHERE outOfStock = 1 AND mrp > 300
ORDER BY quantity DESC;

#Q3.Calculate Estimated Revenue for each category
SELECT category,
SUM(discountedSellingPrice * availableQuantity) AS total_revenue
FROM zepto
GROUP BY category
ORDER BY total_revenue;

## Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
SELECT DISTINCT name, mrp, discountPercent
FROM zepto
WHERE mrp > 500 AND discountPercent < 10
ORDER BY mrp DESC, discountPercent DESC;

## Q5. Identify the top 5 categories offering the highest average discount percentage.
SELECT category,
ROUND(AVG(discountPercent),2) AS avg_discount
FROM zepto
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;

## Q6 Find the price per gram for products above 100g and sort by best value.
SELECT DISTINCT name, weightInGms, discountedSellingPrice,
ROUND(discountedSellingPrice/weightInGms,2) AS price_per_gram
FROM zepto
WHERE weightInGms >= 100
ORDER BY price_per_gram;


#Q7.Group the products into categories like Low, Medium, Bulk.
SELECT DISTINCT name, weightInGms,
CASE WHEN weightInGms < 1000 THEN 'Low'
	WHEN weightInGms < 5000 THEN 'Medium'
	ELSE 'Bulk'
	END AS weight_category
FROM zepto;

## Q8.What is the Total Inventory Weight Per Category 
SELECT category,
SUM(weightInGms * availableQuantity) AS total_weight
FROM zepto
GROUP BY category
ORDER BY total_weight;
