CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    cc_num BIGINT UNIQUE,
    first VARCHAR(50),
    last VARCHAR(50),
    gender CHAR(1),
    dob DATE,
    age INT
);

CREATE TABLE merchants (
    merchant_id SERIAL PRIMARY KEY,
    merchant_name VARCHAR(255) UNIQUE,
    category VARCHAR(50)
);


CREATE TABLE transactions (
    transaction_id SERIAL PRIMARY KEY,
    trans_date_trans_time TIMESTAMP,
    cc_num BIGINT REFERENCES customers(cc_num),
    merchant_id INT REFERENCES merchants(merchant_id),
    amt FLOAT,
    trans_num VARCHAR(100),
    unix_time BIGINT,
    merch_lat FLOAT,
    merch_long FLOAT,
    is_fraud BOOLEAN,
    transaction_hour INT,
    transaction_dayofweek INT,
    transaction_day INT,
    transaction_month INT
);

INSERT INTO customers (cc_num, first, last, gender, dob, age)
SELECT DISTINCT cc_num, first, last, gender, dob, age
FROM temp_transactions;

INSERT INTO merchants (merchant_name, category)
SELECT DISTINCT merchant, category
FROM temp_transactions;

INSERT INTO merchants (merchant_name, category)
SELECT DISTINCT merchant, category
FROM temp_transactions
ON CONFLICT (merchant_name) DO NOTHING;

INSERT INTO transactions (trans_date_trans_time, cc_num, merchant_id, amt, trans_num, unix_time, merch_lat, merch_long, is_fraud, transaction_hour, transaction_dayofweek, transaction_day, transaction_month)
SELECT t.trans_date_trans_time, t.cc_num, m.merchant_id, t.amt, t.trans_num, t.unix_time, t.merch_lat, t.merch_long, t.is_fraud, t.transaction_hour, t.transaction_dayofweek, t.transaction_day, t.transaction_month
FROM temp_transactions t
JOIN merchants m ON t.merchant = m.merchant_name;




