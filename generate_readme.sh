#!/bin/bash

# Generate the tree structure of the repository
tree_structure=$(tree -I 'node_modules|.git' -L 2)

# Generate the README content
cat <<EOF > README.md
# Customer Balance Categorization

This repository contains PL/SQL scripts to categorize customers based on their balance in the \`customer_balance\` table. The categorization is done using a stored procedure that updates the category of each customer based on their balance.

## Repository Contents

\`\`\`plaintext
$tree_structure
\`\`\`

## File Descriptions

### Root Directory

- **README.md**: This file, providing an overview and documentation for the repository.
- **customer_relations.sql**: SQL script for managing customer relations and sales data. Includes updates and queries for salesmen and their sales amounts.
- **deptemp.sql**: SQL script for department and employee management, including creation and manipulation of department and employee tables.
- **custpp.sql**: SQL script for customer-related operations, including procedures and functions for managing customer data.
- **Nested and Correlated.sql**: SQL script containing nested and correlated subqueries for complex data retrieval.
- **queries.odt**: Document containing various SQL queries for different operations and data retrieval.

### PLSQL Directory

- **bank.sql**: PL/SQL script for bank-related operations, including procedures and functions for managing bank accounts and transactions.
- **customer_category.sql**: Script to categorize customers into 'Silver', 'Gold', or 'Platinum' based on their balance. Includes a procedure to update the category and loops through each customer to apply the categorization.
- **DBS/**: Subdirectory containing scripts for table creation.
  - **accounts.sql**: SQL script for creating and managing the accounts table.
  - **customer_balance.sql**: SQL script for creating and managing the customer balance table.
  - **students.sql**: SQL script for creating and managing the students table.
- **exitloop.sql**: PL/SQL script demonstrating the use of exit loops, including examples of loop control and exit conditions.
- **marks.sql**: PL/SQL script for managing student marks, including procedures for calculating and updating student grades.
- **pl.sql**: General PL/SQL script for various operations, including examples of PL/SQL blocks, procedures, and functions.

## Description of \`customer_category.sql\`

The \`customer_category.sql\` script contains the following key components:

1. **Procedure \`categorize_customer\`**:
    - **Input Parameters**: \`CID\` (Customer ID), \`bal\` (Balance).
    - **Logic**:
        - If \`bal\` <= 10,000, set \`Category\` to 'Silver'.
        - If \`bal\` <= 50,000, set \`Category\` to 'Gold'.
        - Otherwise, set \`Category\` to 'Platinum'.
    - **Updates**: The \`Category\` column in the \`customer_balance\` table based on the balance.

2. **Main Block**:
    - **Loop**: Iterates through each row in the \`customer_balance\` table.
    - **Procedure Call**: Calls \`categorize_customer\` for each customer.
    - **Output**: Prints the \`CID\`, \`bal\`, and \`Category\` for each customer after categorization.

### Example Usage

To run the script, execute the following command in your SQL environment:

\`\`\`sql
@PLSQL/customer_category.sql
\`\`\`

## License
This project is licensed under the MIT License - see the LICENSE file for details.
EOF
