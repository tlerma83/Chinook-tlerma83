-- Provide a query that shows all Invoices but includes the # of invoice line items
select 
    i.*, 
    Count(il.InvoiceId) As "Line Item Count"
From Invoice i, InvoiceLine il
Where i.InvoiceId = il.InvoiceId
Group By i.InvoiceId;