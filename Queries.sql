- display all customers

select *
from bank_customers;


-- display only customer name and balance
select customer_name, balance
from bank_customers;
-- Find customers with balance greater than 100,000.
select *
from bank_customers
where balance>100000;
-- Find all customers with a loan.
select*
from bank_customers
where loan_amount is not null;


-- Find customers with credit score above 700
select*
from bank_customers
where credit_score>700;
-- Count the total number of customers.
select count(customer_name)as total_customers
from bank_customers;-- Find the average account balance.
select avg(balance) as avg_acc_balance
from bank_customers;
-- Find the highest account balance.
select  max(balance)
from bank_customers;
-- Find the lowest loan amount.
 select min(loan_amount) as lowest_loan_amount
 from bank_customers;
  --  Calculate the total loan amount.        
 select sum(loan_amount) as total_loan_amount
 from bank_customers;



-- Count customers by account type.
select account_type,count(*)
from bank_customers
group by account_type;

-- Calculate average balance by branch.
 select branch, avg(balance)as avg_balance
 from bank_customers
 group by branch;

--  Find the customer with the highest credit score
select  customer_name,credit_score
from bank_customers
order by credit_score desc
limit 1;




-- Find customers whose loan amount is greater than 300,000.

select*
from bank_customers
where loan_amount>300000
