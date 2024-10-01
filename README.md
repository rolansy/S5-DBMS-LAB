
# S5-DBMS-LAB PL/SQL Repository

Welcome to the S5 DBMS LAB Repository! This repository contains a collection of PL/SQL scripts designed to be run on SQL*Plus. These scripts cover various use cases and scenarios, making it a valuable resource for anyone working with PL/SQL.

## Directory Structure


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
    │   ├── electricity_charge.sql
    │   ├── railway.sql
    │   ├── std_honors.sql
    │   ├── student_avg.sql
    │   ├── students.sql
    │   └── train.sql
    ├── electricity_bill.sql
    ├── exitloop.sql
    ├── marks.sql
    ├── pl.sql
    ├── railway_reservation.sql
    ├── student_honors.sql
    ├── student_trigger.sql
    ├── train_trigger.sql
    └── trigger.sql
```


## Main Directory

| File | Description |
|------|-------------|
| [Nested and Correlated.sql](PLSQL/Nested%20and%20Correlated.sql) | Script demonstrating nested and correlated subqueries. |
| [README.md](PLSQL/README.md) | This README file. |
| [customer_relations.sql](PLSQL/customer_relations.sql) | Script for managing customer relations. |
| [custpp.sql](PLSQL/custpp.sql) | Customer-related stored procedures and functions. |
| [deptemp.sql](PLSQL/deptemp.sql) | Script for department and employee management. |
| [queries.odt](PLSQL/queries.odt) | Document containing various SQL queries. |

## PLSQL Directory

| File | Description |
|------|-------------|
| [DBS/](PLSQL/DBS) | Directory containing database scripts. |
| [bank.sql](PLSQL/DBS/bank.sql) | Script for banking operations. |
| [customer_category.sql](PLSQL/DBS/customer_category.sql) | Script for categorizing customers. |
| [electricity_bill.sql](PLSQL/DBS/electricity_bill.sql) | Script for managing electricity bills. |
| [exitloop.sql](PLSQL/DBS/exitloop.sql) | Example of using exit loops in PL/SQL. |
| [marks.sql](PLSQL/DBS/marks.sql) | Script for managing student marks. |
| [pl.sql](PLSQL/DBS/pl.sql) | General PL/SQL script. |
| [railway_reservation.sql](PLSQL/DBS/railway_reservation.sql) | Script for railway reservation system. |
| [student_honors.sql](PLSQL/DBS/student_honors.sql) | Script for managing student honors. |
| [student_trigger.sql](PLSQL/DBS/student_trigger.sql) | Trigger for student-related operations. |
| [train_trigger.sql](PLSQL/DBS/train_trigger.sql) | Trigger for train-related operations. |
| [trigger.sql](PLSQL/DBS/trigger.sql) | General trigger script. |

## PLSQL/DBS Directory

| File | Description |
|------|-------------|
| [accounts.sql](PLSQL/DBS/accounts.sql) | Script for managing accounts. |
| [customer_balance.sql](PLSQL/DBS/customer_balance.sql) | Script for managing customer balances. |
| [electricity_charge.sql](PLSQL/DBS/electricity_charge.sql) | Script for managing electricity charges. |
| [railway.sql](PLSQL/DBS/railway.sql) | General railway management script. |
| [std_honors.sql](PLSQL/DBS/std_honors.sql) | Script for student honors. |
| [student_avg.sql](PLSQL/DBS/student_avg.sql) | Script for calculating student averages. |
| [students.sql](PLSQL/DBS/students.sql) | Script for managing student information. |
| [train.sql](PLSQL/DBS/train.sql) | Script for managing train information. |

## Usage Instructions

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/plsql-scripts.git
    ```
2. Navigate to the desired directory:
    ```sh
    cd plsql-scripts/PLSQL
    ```
3. Run the scripts using SQL*Plus:
    ```sh
    sqlplus username/password@database @scriptname.sql
    ```
    
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

## Contributing

We welcome contributions! Please read our [Contributing Guidelines](CONTRIBUTING.md) for more details.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

This README provides a clear and organized overview of the repository, including a tree structure for the folders and detailed descriptions for each SQL file. It also includes instructions on how to run the customer_category.sql script and sample output to illustrate its functionality.
