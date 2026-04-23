🛒 **Zepto-Style E-commerce SQL Analysis**

This project simulates real-world e-commerce problem-solving using **SQL**, focusing on **revenue optimization, pricing strategy, and inventory efficiency.**

⭐ Project Summary

**Situation**

Analyzed a Zepto-like dataset containing 3,732 products with real-world data issues such as **missing values, inconsistent pricing, and duplicate records.**

**Task**

Identify:

-Revenue leakage due to discounting
-Pricing inefficiencies across categories
-Inventory gaps affecting sales

**Action**

-Cleaned and transformed data (handled nulls, fixed data types, removed inconsistencies)
-Converted pricing from paise to rupees and ensured logical consistency
-Performed SQL analysis on pricing, discounts, and stock availability
-Identified high-demand products going out of stock
-Analyzed category-wise revenue contribution and pricing patterns
-Conducted value-for-money analysis (price per gram)

**Result**

-Identified **~20%** products with high discounting, indicating potential revenue leakage
-Observed **Pareto trend: top categories contribute majority of revenue (~60–70%)**
-Detected frequent stock-outs in high-demand products, leading to missed sales
-Highlighted pricing inconsistencies across similar products

**📊 Dataset Overview**

-Total Records: 3,732 products

**🧾 Key Columns:**
-sku_id – Unique product ID
-name – Product name
-category – Product category
-mrp – Maximum Retail Price
-discountPercent – Discount applied
-discountedSellingPrice – Final price
-availableQuantity – Inventory level
-outOfStock – Stock status
-quantity – Units sold

**🧹 Data Cleaning & Preparation**

-Handled missing/null values
-Fixed incorrect data types
-Removed inconsistent records
-Converted pricing units
-Ensured Selling Price ≤ MRP

**🔧 Key Analysis Performed**
-Pricing and discount strategy analysis
-High-value out-of-stock product identification
-Category-wise revenue analysis
-Inventory distribution analysis
-Price-per-gram (value analysis)
-Product segmentation by weight

**📈 Key Insights**

🚨 High-demand products frequently go out of stock → revenue leakage
💰 Few categories dominate revenue (Pareto principle)
🏷️ Heavy discounting in some categories → margin risk
⚖️ Price inconsistency across similar products
📦 Uneven inventory distribution

**📌 Business Recommendations**

-Improve demand forecasting
-Prioritize high-demand product restocking
-Optimize discount strategies
-Align inventory with demand
-Standardize pricing

**🛠️ Tools & Skills**

SQL (MySQL)
Data Cleaning
Exploratory Data Analysis
Business Insight Generation


⭐ If you found this project insightful, feel free to star the repository!

**📩 I’m currently transitioning into a Data Analyst role and actively looking for opportunities. 
I’d love to connect, collaborate, or discuss data-driven problem solving.**
