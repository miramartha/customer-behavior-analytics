SELECT 
    COUNT(DISTINCT customer_id) AS total_customers,
    COUNT(*) AS total_transactions
FROM shopping_trends;

SELECT 
    ROUND(AVG(total_spent), 2) AS avg_spending
FROM shopping_trends;

SELECT 
    gender,
    ROUND(AVG(total_spent), 2) AS avg_spent
FROM shopping_trends
GROUP BY gender;

SELECT 
    category,
    COUNT(*) AS total_purchases
FROM shopping_trends
GROUP BY category
ORDER BY total_purchases DESC
LIMIT 5;

SELECT 
    city,
    SUM(total_spent) AS total_revenue
FROM shopping_trends
GROUP BY city
ORDER BY total_revenue DESC;

SELECT 
    payment_method,
    COUNT(*) AS usage_count
FROM shopping_trends
GROUP BY payment_method
ORDER BY usage_count DESC;

SELECT
    CASE
        WHEN age < 20 THEN 'Teen'
        WHEN age BETWEEN 20 AND 29 THEN '20s'
        WHEN age BETWEEN 30 AND 39 THEN '30s'
        WHEN age BETWEEN 40 AND 49 THEN '40s'
        ELSE '50+'
    END AS age_group,
    COUNT(*) AS total_customers,
    ROUND(AVG(total_spent), 2) AS avg_spent
FROM shopping_trends
GROUP BY age_group;

SELECT 
    category,
    ROUND(AVG(rating), 2) AS avg_rating,
    COUNT(*) AS total_reviews
FROM shopping_trends
GROUP BY category
ORDER BY avg_rating DESC;
