-- How many Invoices were there in 2009 and 2011?

select Count(*) 
From Invoice 
Where InvoiceDate Like "2011%";