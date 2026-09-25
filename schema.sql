CREATE TABLE bank_customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    account_type VARCHAR(20),
    branch VARCHAR(50),
    balance DECIMAL(12,2),
    loan_amount DECIMAL(12,2),
    credit_score INT
);
INSERT INTO bank_customers
(customer_id, customer_name, 
  age,
  gender,
  account_type, branch,
  balance, 
  loan_amount, 
  credit_score)
VALUES
(1, 'John Kamau', 28, 'Male', 'Savings', 'Nairobi', 85000.00, 150000.00, 720),
(2, 'Mary Wanjiku', 34, 'Female', 'Current', 'Nakuru', 125000.00, 300000.00, 680),
(3, 'Peter Mwangi', 42, 'Male', 'Savings', 'Kiambu', 45000.00, 100000.00, 650),
(4, 'Grace Akinyi', 31, 'Female', 'Savings', 'Kisumu', 210000.00, 500000.00, 780),
(5, 'David Otieno', 39, 'Male', 'Current', 'Mombasa', 67000.00, 250000.00, 610),
(6, 'Jane Njeri', 26, 'Female', 'Savings', 'Nyeri', 95000.00, 0.00, 735),
(7, 'Samuel Kariuki', 45, 'Male', 'Current', 'Nairobi', 320000.00, 750000.00, 800),
(8, 'Lucy Wambui', 29, 'Savings', 'Female', 'Machakos', 58000.00, 120000.00, 690),
(9, 'Brian Kiptoo', 36, 'Male', 'Savings', 'Eldoret', 145000.00, 350000.00, 710),
(10, 'Ann Chebet', 33, 'Female', 'Current', 'Kericho', 88000.00, 200000.00, 660);
