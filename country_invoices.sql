-- Provide a query that shows the # of invoices per country. HINT: GROUP BY

select 
    Count(*) As "Invoice Total Per Country", 
    BillingCountry As "Country"
From Invoice
Group By BillingCountry;