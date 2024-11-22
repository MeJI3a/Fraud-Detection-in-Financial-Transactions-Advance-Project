CREATE TABLE temp_transactions (
    id SERIAL PRIMARY KEY,
    trans_date_trans_time TIMESTAMP,
    cc_num BIGINT,
    merchant VARCHAR(255),
    category VARCHAR(50),
    amt FLOAT,
    first VARCHAR(50),
    last VARCHAR(50),
    gender CHAR(1),
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(50),
    zip INT,
    lat FLOAT,
    long FLOAT,
    city_pop INT,
    job VARCHAR(100),
    dob DATE,
    trans_num VARCHAR(100),
    unix_time BIGINT,
    merch_lat FLOAT,
    merch_long FLOAT,
    is_fraud BOOLEAN,
    transaction_hour INT,
    transaction_dayofweek INT,
    transaction_day INT,
    transaction_month INT,
    age INT
);

COPY temp_transactions(trans_date_trans_time, cc_num, merchant, category, amt, first, last, gender, street, city, state, zip, lat, long, city_pop, job, dob, trans_num, unix_time, merch_lat, merch_long, is_fraud, transaction_hour, transaction_dayofweek, transaction_day, transaction_month, age)
FROM 'C:\Program Files\PostgreSQL\15\data\fraudData_cleaned_cleaned.csv'
DELIMITER ','
CSV HEADER;





