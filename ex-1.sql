-- ex1_AP.sql
-- Exercise 1
-- Revision History:
-- Rutvik Gandhi, Section 3, 2023.01.16: Created

Print 'F22 PROG8080 Section 3';
Print 'Exercise 1';
Print '';
Print 'Rutvik Gandhi';
Print '';
Print GETDATE();
Print '';

USE AP;

-- 1

Print 'List the columns of the Terms table in the AP database.';
Print '';

SELECT *
FROM Terms 

-- 2

Print 'List the ‘state code’ vendors are from, but show each ‘state code’ only once
(i.e., no duplicates). List the results in descending order.';
Print '';

SELECT DISTINCT VendorZipCode as 'state code' 
FROM Vendors ORDER BY VendorZipCode DESC; 

-- 3

Print 'Display all the columns of vendors from Texas. You must use ‘TX’ as part of
your solution.';
Print '';

SELECT * 
FROM Vendors 
WHERE VendorState = 'TX'; 

-- 4

Print 'List all the columns of invoices with a Vendor ID of 83. Do not include single
quotes (‘) or double quotes (“) as part of your solution.';
Print '';

SELECT * 
FROM Invoices 
WHERE VendorID = 83;

-- 5

Print 'List the 5 columns (Invoice ID, Vendor ID, Invoice Total, Credit Total and
Payment Total) for invoices with Invoice ID of 17.';
Print '';

SELECT InvoiceID, VendorID, InvoiceTotal, CreditTotal, PaymentTotal 
FROM Invoices 
WHERE InvoiceID = 17; 

-- 6

Print 'List the 4 columns (Vendor ID, Vendor Name, Default Terms ID and a string
expression that includes Vendor City, Vendor State and Vendor Zip Code
separates by commas) for vendors with a Vendor ID of 123. Do not assign
an alias for the string expression (i.e., no column name).';
Print '';

SELECT VendorID, VendorName, DefaultTermsID, VendorCity + ' , ' + VendorState + ' , ' + VendorZipCode VendorZipCode
FROM dbo.Vendors
WHERE VendorID=123;

-- 7

Print 'Are there any outstanding invoices (i.e., unpaid invoices) for Vendor ID 123?
List the 7 columns (Vendor ID, Terms ID, Invoice ID, Invoice Total, Credit
Total, Payment Total and an arithmetic expression for “Balance Due”
calculated as ‘Invoice Amount minus Credit Amount minus Payment
Amount’) for invoices with Vendor ID of 123 and “Balance Due” greater
than zero.';
Print '';

SELECT VendorID, TermsID, InvoiceID, InvoiceTotal, CreditTotal, PaymentTotal, InvoiceTotal - CreditTotal - PaymentTotal as 'Balance Due' 
FROM Invoices 
WHERE VendorID = 123; 

-- 8 

Print 'List all the columns of the invoice line items with Invoice IDs listed in the
previous question. Use the IN operator as part of your solution. Do not use
any quotes in your solution.';
Print '';

SELECT * 
FROM InvoiceLineItems 
WHERE InvoiceID IN (SELECT InvoiceID from Invoices WHERE VendorID = 123);

-- 9 

Print 'List the Vendor State and Vendor Contact First Name columns, followed by
6 columns using the following string functions with the Vendor Contact First
Name as the argument: LEN(), LOWER(), UPPER(),LEFT(), RIGHT(), and
TRIM() for vendors from Florida (FL) or Texas (TX). Do not use the IN
operator as part of your solution.';
Print '';

SELECT VendorState, VendorContactFName, 
LEN(VendorContactFName) LengtofTheName, LOWER(VendorContactFName) LowerCase, UPPER(VendorContactFName) UpperCase, LEFT(VendorContactFName,3) LeftSide, RIGHT(VendorContactFName,3) RightSide, TRIM(VendorContactFName) Trim
FROM Vendors 
WHERE VendorState = 'FL' OR VendorState = 'TX'; 

-- 10


Print 'List the 3 columns (Invoice Number, Invoice Date, and Invoice Total) for
invoices with Invoice Date of January 8, 2020. You must use the MONTH(),
DAY() and YEAR() functions in your WHERE clause.';
Print '';

SELECT InvoiceNumber, InvoiceDate, '$' + CONVERT(CHAR(12),CAST (InvoiceTotal as MONEY),1) as InvoiceTotal
FROM Invoices
WHERE InvoiceDate = '01-08-2020'

