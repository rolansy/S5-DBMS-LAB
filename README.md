# Customer Balance Categorization

This repository contains PL/SQL scripts to categorize customers based on their balance in the `customer_balance` table. The categorization is done using a stored procedure that updates the category of each customer based on their balance.

## Repository Contents

| File/Directory                  | Description                                                                 |
|---------------------------------|-----------------------------------------------------------------------------|
| `README.md`                     | This file, providing an overview and documentation for the repository.      |
| `customer_relations.sql`        | SQL script for managing customer relations and sales data.                  |
| `deptemp.sql`                   | SQL script for department and employee management.                          |
| `custpp.sql`                    | SQL script for customer-related operations.                                 |
| `Nested and Correlated.sql`     | SQL script containing nested and correlated subqueries.                     |
| `queries.odt`                   | Document containing various SQL queries.                                    |
| `PLSQL/`                        | Directory containing PL/SQL scripts.                                        |

## PLSQL Directory Contents

| File                          | Description                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| `bank.sql`                    | PL/SQL script for bank-related operations.                                  |
| `customer_category.sql`       | Script to categorize customers into 'Silver', 'Gold', or 'Platinum' based on their balance. |
| `DBS/`                        | Subdirectory containing scripts for table creation.                         |
| `exitloop.sql`                | PL/SQL script demonstrating the use of exit loops.                          |
| `marks.sql`                   | PL/SQL script for managing student marks.                                   |
| `pl.sql`                      | General PL/SQL script for various operations.                               |

## DBS Directory Contents

| File                          | Description                                                                 |
|-------------------------------|-----------------------------------------------------------------------------|
| `accounts.sql`                | SQL script for creating and managing accounts table.                        |
| `customer_balance.sql`        | SQL script for creating and managing customer balance table.                |
| `students.sql`                | SQL script for creating and managing students table.                        |

# Customer Balance Categorization

This repository contains various SQL and PL/SQL scripts for managing customer relations, department and employee data, and categorizing customers based on their balance.

## Repository Contents

```plaintext
.
├── README.md
├── customer_relations.sql
├── deptemp.sql
├── custpp.sql
├── Nested and Correlated.sql
├── queries.odt
└── PLSQL
    ├── bank.sql
    ├── customer_category.sql
    ├── DBS
    │   ├── accounts.sql
    │   ├── customer_balance.sql
    │   └── students.sql
    ├── exitloop.sql
    ├── marks.sql
    └── pl.sql
```

File Descriptions
Root Directory
README.md: This file, providing an overview and documentation for the repository.
customer_relations.sql: SQL script for managing customer relations and sales data. Includes updates and queries for salesmen and their sales amounts.
deptemp.sql: SQL script for department and employee management, including creation and manipulation of department and employee tables.
custpp.sql: SQL script for customer-related operations, including procedures and functions for managing customer data.
Nested and Correlated.sql: SQL script containing nested and correlated subqueries for complex data retrieval.
queries.odt: Document containing various SQL queries for different operations and data retrieval.
PLSQL Directory
bank.sql: PL/SQL script for bank-related operations, including procedures and functions for managing bank accounts and transactions.
customer_category.sql: Script to categorize customers into 'Silver', 'Gold', or 'Platinum' based on their balance. Includes a procedure to update the category and loops through each customer to apply the categorization.
DBS/: Subdirectory containing scripts for table creation.
accounts.sql: SQL script for creating and managing the accounts table.
customer_balance.sql: SQL script for creating and managing the customer balance table.
students.sql: SQL script for creating and managing the students table.
exitloop.sql: PL/SQL script demonstrating the use of exit loops, including examples of loop control and exit conditions.
marks.sql: PL/SQL script for managing student marks, including procedures for calculating and updating student grades.
pl.sql: General PL/SQL script for various operations, including examples of PL/SQL blocks, procedures, and functions.
Description of customer_category.sql
The customer_category.sql script contains the following key components:

Procedure categorize_customer:

Input Parameters: CID (Customer ID), bal (Balance).
Logic:
If bal <= 10,000, set Category to 'Silver'.
If bal <= 50,000, set Category to 'Gold'.
Otherwise, set Category to 'Platinum'.
Updates: The Category column in the customer_balance table based on the balance.
Main Block:

Loop: Iterates through each row in the customer_balance table.
Procedure Call: Calls categorize_customer for each customer.
Output: Prints the CID, bal, and Category for each customer after categorization.
Example Usage
To run the script, execute the following command in your SQL environment:
```sql
@PLSQL/customer_category.sql
```
This will categorize each customer in the customer_balance table and print the results.

Sample Output
```sql
CID: 1, bal: 5000, Category: Silver
CID: 2, bal: 20000, Category: Gold
CID: 3, bal: 60000, Category: Platinum
```
How to Contribute
Fork the repository.
Create a new branch (git checkout -b feature-branch).
Commit your changes (git commit -am 'Add new feature').
Push to the branch (git push origin feature-branch).
Create a new Pull Request.

## Description of `customer_category.sql`

The `customer_category.sql` script contains the following key components:

1. **Procedure `categorize_customer`**:
    - **Input Parameters**: `CID` (Customer ID), `bal` (Balance).
    - **Logic**:
        - If `bal` <= 10,000, set `Category` to 'Silver'.
        - If `bal` <= 50,000, set `Category` to 'Gold'.
        - Otherwise, set `Category` to 'Platinum'.
    - **Updates**: The `Category` column in the `customer_balance` table based on the balance.

2. **Main Block**:
    - **Loop**: Iterates through each row in the `customer_balance` table.
    - **Procedure Call**: Calls `categorize_customer` for each customer.
    - **Output**: Prints the `CID`, `bal`, and `Category` for each customer after categorization.

### Example Usage

To run the script, execute the following command in your SQL environment:

```sql
@PLSQL/customer_category.sql
```

## License
This project is licensed under the MIT License - see the LICENSE file for details.

This README provides a clear and organized overview of the repository, including a tree structure for the folders and detailed descriptions for each SQL file. It also includes instructions on how to run the customer_category.sql script and sample output to illustrate its functionality.
