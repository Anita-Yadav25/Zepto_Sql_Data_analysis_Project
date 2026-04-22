🛒 Zepto SQL Data Analysis Project

This project analyzes an e-commerce dataset (Zepto) using SQL to uncover insights related to pricing, inventory, and demand patterns.

📌 Project Overview

Performed end-to-end analysis on a Zepto-like e-commerce dataset to uncover revenue leakage, pricing inefficiencies, and inventory gaps using SQL.

The goal was to simulate real-world business scenarios and generate actionable insights that directly impact revenue and operations.

🔧 Key Work Done

Designed and structured a real-world e-commerce inventory database from raw CSV data
Performed Exploratory Data Analysis (EDA) to evaluate product distribution, category trends, and stock availability
Cleaned and transformed messy data by:
Handling missing/null values
Removing inconsistent entries
Converting pricing from paise to rupees for accurate analysis
Developed 15+ business-focused SQL queries to analyze:
Pricing strategies
Discount patterns
Inventory distribution
Stock availability
Revenue opportunities

📊 Dataset Overview

The dataset contains product-level information such as:

🧾 Columns:

sku_id: Unique identifier for each product entry (Synthetic Primary Key)

name: Product name as it appears on the app

category: Product category like Fruits, Snacks, Beverages, etc.

mrp: Maximum Retail Price (originally in paise, converted to ₹)

discountPercent: Discount applied on MRP

discountedSellingPrice: Final price after discount (also converted to ₹)

availableQuantity: Units available in inventory

weightInGms: Product weight in grams

outOfStock: Boolean flag indicating stock availability

quantity: Number of units per package (mixed with grams for loose produce)

