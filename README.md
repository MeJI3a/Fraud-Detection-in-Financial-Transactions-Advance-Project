# Project 9: Fraud Detection in Financial Transactions

## 📄 Project Description

This project focuses on detecting fraudulent transactions using machine learning techniques. It addresses the inherent class imbalance problem in fraud detection datasets while delivering insights into transaction patterns and model performance. The project integrates **Python** for preprocessing and machine learning, **SQL** for database management and querying, and plans for future visualization with **Power BI**.

---

## Objectives

1. **Data Cleaning and Preprocessing**:
   - Prepare raw transaction data for analysis by handling missing values, encoding features, and engineering new ones.

2. **Exploratory Data Analysis (EDA)**:
   - Visualize transaction patterns, identify fraud distribution, and highlight imbalances in the dataset.

3. **Fraud Detection**:
   - Develop a machine learning model to classify fraudulent and genuine transactions.

4. **SQL Database Integration**:
   - Structure the data for efficient querying and insight generation.

5. **Power BI Dashboard**:
   - Provide actionable insights with an interactive visualization platform (future work).

---

## Project Structure

### Python

Python is used for data preprocessing, analysis, and machine learning modeling. Below are the Python files and their roles:

- **`Cleaning.ipynb`**:
  - Cleans and preprocesses the raw data.
  - Handles missing values and outliers.
  - Engineers new features like `age`, `transaction_hour`, and `distance`.

- **`LogisticRegression.ipynb`**:
  - Trains a Logistic Regression model for fraud detection.
  - Evaluates the model using metrics like accuracy, recall, and ROC-AUC.
  - Saves the trained model using the `joblib` library for future use.

- **`Smote.ipynb`**:
  - Implements **SMOTE** to address class imbalance in the dataset.
  - Resamples the training data and compares performance with and without SMOTE.

- **`DataDistribution.pdf`**:
  - Provides visual insights into the distribution of transaction amounts and fraud cases.

- **fraudData_cleaned.csv**:  
  The cleaned dataset after applying feature engineering and encoding.  
  [Download fraudData_cleaned.csv from Google Drive](https://drive.google.com/file/d/1SnwlOIx9ypUu6DQ2ZvDCr00EYpnJMADM/view?usp=sharing)

- **fraudData.csv**:  
  The raw dataset used as the starting point for analysis.  
  [Download fraudData.csv from Google Drive](https://drive.google.com/file/d/1rpBKFOPYxyZgltkyuYAvsdt2qk959PJx/view?usp=sharing)


- **`smote_results.csv`**:
  - A report on the class distribution before and after applying SMOTE.

- **`logistic_regression_model.joblib`**:
  - The serialized Logistic Regression model trained on the resampled dataset.

---

### SQL

SQL is used to structure and query the data for insights. Below are the SQL files and their roles:

- **`createDatabase.sql`**:
  - Creates the database schema for managing fraud transaction data.

- **`createTables.sql`**:
  - Defines the structure of the tables:
    - `customers`: Stores customer information.
    - `merchants`: Stores merchant information.
    - `transactions`: Stores transaction data.

- **`queries.sql`**:
  - Contains SQL queries to extract insights, such as:
    - Top categories involved in fraudulent transactions.
    - Fraud distribution by time and day of the week.
    - Customers with the highest number of fraudulent transactions.

---

### Power BI (Future Work)

Plans to develop an interactive dashboard using Power BI.

- **Features**:
  - Visualize transaction patterns, fraud trends, and category distributions.
  - Explore fraud occurrences by location and time.
  - Display model performance metrics like precision and recall.

- **Dashboard Link**:
  - [Power BI Dashboard (Link Coming Soon)](https://placeholder-link.com)


---

## 🔑 Key Findings

1. **Class Imbalance**:
   - Fraudulent transactions make up only **0.3%** of the dataset, requiring techniques like SMOTE to improve detection.

2. **EDA Insights**:
   - Most transactions are small amounts (under $100).
   - Fraudulent cases are concentrated in categories like **travel** and **entertainment**.

3. **Model Performance**:
   - **Without SMOTE**:
     - Accuracy: ~95%
     - Precision: Low (~6%)
     - Recall: High (~77%)
   - **With SMOTE**:
     - Accuracy: ~95%
     - Precision: Improved (~12%)
     - Recall: High (~67%)

4. **SQL Insights**:
   - **Top Fraud Categories**: Travel and entertainment.
   - **Fraud Timing**: High occurrences in late-night transactions.
   - **Customer Patterns**: Certain customers appear frequently in fraudulent cases.

---

## Tools and Technologies

### Python:
- Libraries: `Pandas`, `Scikit-learn`, `Imbalanced-learn`, `Matplotlib`

### SQL:
- SQL scripts for database management and querying.

### Power BI:
- Visualization of key findings.


