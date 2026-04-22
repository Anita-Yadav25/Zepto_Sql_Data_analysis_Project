# 🛒 Zepto E-commerce Data Analysis (SQL Project)

---

## 🚀 Project Overview

This project analyzes a Zepto-like e-commerce dataset using SQL to uncover **revenue leakage, pricing inefficiencies, and inventory gaps**.

The objective was to simulate real-world business scenarios and generate **data-driven insights that improve revenue, pricing strategy, and inventory management**.

---

## 📊 Dataset Overview

* 📦 Total Records: **3,732 products**
* Categories: Fruits & Vegetables, Cooking Essentials, Snacks, Beverages, etc.

### 🧾 Columns Description:

* **sku_id** → Unique identifier for each product (Primary Key)
* **name** → Product name
* **category** → Product category
* **mrp** → Maximum Retail Price (converted from paise to ₹)
* **discountPercent** → Discount applied
* **discountedSellingPrice** → Final selling price
* **availableQuantity** → Current inventory level
* **weightInGms** → Product weight
* **outOfStock** → Stock status (1 = Out of stock, 0 = In stock)
* **quantity** → Units sold (used as demand proxy)

---

## 🧹 Data Cleaning & Preparation

Performed extensive data preprocessing to ensure analysis accuracy:

* Handled missing/null values
* Fixed incorrect data types (BOOLEAN, DECIMAL, INT)
* Removed inconsistent and invalid entries
* Converted pricing from **paise to rupees**
* Ensured logical consistency (Selling Price ≤ MRP)

📌 Result: Created a **clean, analysis-ready dataset**

---

## 🔧 Key Analysis Performed

* Analyzed **pricing and discount strategies**
* Identified **high-value products that are out of stock**
* Calculated **category-wise revenue contribution**
* Evaluated **inventory distribution and stock availability**
* Performed **value-for-money analysis (price per gram)**
* Segmented products based on **weight categories**
* Measured **inventory load using total weight per category**

---

## 📈 Key Insights

* 🚨 High-demand products frequently go out of stock → **revenue leakage**
* 💰 A small number of categories contribute to the majority of revenue (Pareto trend)
* 🏷️ Some categories rely heavily on discounts → **margin risk**
* ⚖️ Significant variation in price per gram → **pricing inconsistency**
* 📦 Inventory distribution is uneven → **operational inefficiency**

---

## 💡 Business Impact

* Identified opportunities to **recover lost revenue through better stock management**
* Highlighted need for **optimized pricing and discount strategies**
* Enabled **data-driven decision-making for inventory planning**
* Improved understanding of **customer demand patterns**

---

## 📌 Business Recommendations

* Improve demand forecasting to reduce stockouts
* Prioritize restocking of high-demand, high-value products
* Optimize discount strategies to protect profit margins
* Align inventory distribution with demand trends
* Standardize pricing across similar products

---

## 🛠️ Tools & Skills Used

* SQL (MySQL)
* Data Cleaning & Transformation
* Exploratory Data Analysis (EDA)
* Business Insight Generation

---

## 💼 About This Project

This project demonstrates my ability to:

✔ Work with real-world messy datasets
✔ Perform end-to-end data analysis using SQL
✔ Translate data into actionable business insights
✔ Think from a business and analytical perspective

---

⭐ If you found this project interesting, feel free to connect or share feedback!

---
