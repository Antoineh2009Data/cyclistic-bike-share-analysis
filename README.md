# cyclistic-bike-share-analysis

📌Business Problem
Cyclistic, a bike-share company, wants to increase the number of annual memberships. This analysis explores behavioral differences between casual riders and annual members to identify opportunities for conversion.

🛠 Tools Used
SQL (PostgreSQL) – Data cleaning & analysis
Tableau – Data visualization

🧹 Data Cleaning & Preparation
Imported 12 monthly datasets into PostgreSQL
Standardized table structures across all datasets
Combined datasets using UNION ALL
Removed invalid timestamp values
Created calculated fields:
ride_length_min (trip duration in minutes)
day_of_week
Filtered out invalid ride durations (≤ 0 minutes)

📈 Analysis Performed
Compared ride frequency between casual riders and members
Analyzed average ride duration
Evaluated riding patterns by day of week and hour
Identified seasonal and behavioral trends

🔍 Key Insights
Members take significantly more rides than casual users
Casual riders have nearly 2x longer ride durations
Casual riders peak on weekends, indicating recreational usage
Members ride consistently throughout the week, indicating commuting behavior

💡 Business Recommendations
Target casual riders with weekend promotions
Introduce membership discounts or trials
Promote commuting benefits to convert casual users
Offer pricing plans for frequent long rides

📊 Dashboard
👉 https://public.tableau.com/views/CyclisticDashboard_17742846143950/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

📂 Project Files
cyclistic_analysis.sql – SQL queries for data cleaning and analysis
summary_riders.csv – Rider comparison data
summary_weekday.csv – Weekly trends

🚀 Outcome
This project demonstrates the ability to clean, analyze, and visualize large datasets while delivering actionable business insights.
