SELECT * FROM customers LIMIT 5;
SELECT * FROM merchants LIMIT 5;
SELECT * FROM transactions LIMIT 5;


-- 1. Count the total number of transactions
SELECT COUNT(*) AS total_transactions
FROM transactions;


-- 2. Count the number of fraudulent transactions
SELECT COUNT(*) AS total_fraud_transactions
FROM transactions
WHERE is_fraud = true;


-- 3. Find the average transaction amount
SELECT AVG(amt) AS avg_transaction_amount
FROM transactions;


-- 4. Get a list of unique merchant categories
SELECT DISTINCT category
FROM merchants;


-- 5. Count the number of transactions by day of the week
SELECT transaction_dayofweek, COUNT(*) AS transaction_count
FROM transactions
GROUP BY transaction_dayofweek
ORDER BY transaction_dayofweek;


-- 6. Find customers with the highest number of fraudulent transactions
SELECT c.first, c.last, COUNT(t.is_fraud) AS fraud_count
FROM customers c
JOIN transactions t ON c.cc_num = t.cc_num
WHERE t.is_fraud = true
GROUP BY c.first, c.last
ORDER BY fraud_count DESC
LIMIT 10;


-- 7. Determine merchant categories with the highest average value of fraudulent transactions
SELECT m.category, AVG(t.amt) AS avg_fraud_amount
FROM merchants m
JOIN transactions t ON m.merchant_id = t.merchant_id
WHERE t.is_fraud = true
GROUP BY m.category
ORDER BY avg_fraud_amount DESC
LIMIT 5;


-- 8. Analyze the time periods with the highest fraudulent transaction activity (by hour)
SELECT transaction_hour, COUNT(is_fraud) AS fraud_count
FROM transactions
WHERE is_fraud = true
GROUP BY transaction_hour
ORDER BY fraud_count DESC
LIMIT 5;


-- 9. Find customers who transacted with the highest number of different merchants
SELECT c.first, c.last, COUNT(DISTINCT t.merchant_id) AS unique_merchants
FROM customers c
JOIN transactions t ON c.cc_num = t.cc_num
GROUP BY c.first, c.last
ORDER BY unique_merchants DESC
LIMIT 10;


-- 10. Identify the top 5 highest-value fraudulent transactions
SELECT t.trans_num, c.first, c.last, t.amt, t.trans_date_trans_time
FROM transactions t
JOIN customers c ON t.cc_num = c.cc_num
WHERE t.is_fraud = true
ORDER BY t.amt DESC
LIMIT 5;





