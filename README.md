# my-sql-project.
# Bank Customers Analysis (SQL)

A beginner-to-intermediate SQL project that explores a single `bank_customers` table. It covers filtering, aggregation, grouping, conditional logic with `CASE`, and window functions, all framed around questions a bank analyst would ask about balances, loans and credit risk.

## Dataset

Table: `bank_customers`

| Column | Description |
|---|---|
| `customer_name` | Name of the customer |
| `account_type` | Type of account held |
| `branch` | Branch where the account is held |
| `balance` | Current account balance |
| `loan_amount` | Loan amount (NULL if no loan) |
| `credit_score` | Customer credit score |



## Tools

- SQL ( DB Fiddle)

## Questions Answered

### 1. Data exploration and filtering
- Display all customers
- Display only customer name and balance
- Find customers with a balance greater than 100,000
- Find all customers with a loan (`loan_amount IS NOT NULL`)
- Find customers with a credit score above 700
- Find customers whose loan amount is greater than 300,000

### 2. Aggregations
- Total number of customers (`COUNT`)
- Average account balance (`AVG`)
- Highest account balance (`MAX`)
- Lowest loan amount (`MIN`)
- Total loan amount (`SUM`)

### 3. Grouping
- Number of customers by account type
- Average balance by branch
- Total balance held by each account type

### 4. Sorting and ranking
- Customer with the highest credit score (`ORDER BY ... LIMIT 1`)
- Rank customers by account balance using `RANK() OVER (ORDER BY balance DESC)`

### 5. Calculations and conditional logic
- Loan-to-balance ratio for each customer (`loan_amount / balance`)
- Credit risk categorisation with `CASE`:

| Credit score | Risk category |
|---|---|
| 700 and above | Low risk |
| 650 to 699 | Medium risk |
| Below 650 | High risk |

## Sample Query

```sql
SELECT *,
       CASE
           WHEN credit_score >= 700 THEN 'low risk'
           WHEN credit_score >= 650 THEN 'medium risk'
           ELSE 'high risk'
       END AS credit_risk
FROM bank_customers;
```

## Key Skills Demonstrated

- `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`
- Aggregate functions: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- `GROUP BY` for segment-level analysis
- `CASE` statements for risk segmentation
- Window functions (`RANK`)
- Handling NULL values


## Files

- `bank_customers_analysis.sql`: all queries

## Author

**Patrick Njuguna Muchemi**
GitHub: [Patrick001-DA](https://github.com/Patrick001-DA)
