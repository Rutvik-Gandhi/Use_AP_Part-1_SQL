# Use_AP_Part-1_SQL

This README.md file provides a brief overview of the SQL script `ex1_AP.sql`, detailing the exercises and queries it contains for the AP database.

## Exercise Overview

The `ex1_AP.sql` script consists of SQL queries designed to retrieve specific information from the AP (Accounts Payable) database. Each exercise targets different aspects of data retrieval and manipulation.

## Revision History

The script was created by Rutvik Gandhi on January 16, 2023, for Section 3.

## Contents of the Script

The script contains the following exercises:

### 1. List the columns of the Terms table in the AP database.

### 2. List the 'state code' vendors are from, but show each 'state code' only once (i.e., no duplicates). List the results in descending order.

### 3. Display all the columns of vendors from Texas.

### 4. List all the columns of invoices with a Vendor ID of 83.

### 5. List the 5 columns (Invoice ID, Vendor ID, Invoice Total, Credit Total, and Payment Total) for invoices with Invoice ID of 17.

### 6. List the 4 columns (Vendor ID, Vendor Name, Default Terms ID, and a string expression that includes Vendor City, Vendor State, and Vendor Zip Code separates by commas) for vendors with a Vendor ID of 123.

### 7. Are there any outstanding invoices (i.e., unpaid invoices) for Vendor ID 123? List the 7 columns (Vendor ID, Terms ID, Invoice ID, Invoice Total, Credit Total, Payment Total, and an arithmetic expression for “Balance Due” calculated as ‘Invoice Amount minus Credit Amount minus Payment Amount’) for invoices with Vendor ID of 123 and “Balance Due” greater than zero.

### 8. List all the columns of the invoice line items with Invoice IDs listed in the previous question. Use the IN operator as part of your solution.

### 9. List the Vendor State and Vendor Contact First Name columns, followed by 6 columns using the following string functions with the Vendor Contact First Name as the argument: LEN(), LOWER(), UPPER(), LEFT(), RIGHT(), and TRIM() for vendors from Florida (FL) or Texas (TX).

### 10. List the 3 columns (Invoice Number, Invoice Date, and Invoice Total) for invoices with Invoice Date of January 8, 2020. You must use the MONTH(), DAY(), and YEAR() functions in your WHERE clause.

## How to Use the Script

1. Open your preferred SQL client or environment.

2. Load the AP database.

3. Copy and paste the SQL queries from `ex1_AP.sql` into your SQL client.

4. Execute the queries one by one to retrieve the desired information from the database.

## Contributors

- Rutvik Gandhi

## License

This script is provided under the MIT License. See the [LICENSE](LICENSE) file for details.
