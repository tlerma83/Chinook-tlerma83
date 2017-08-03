-- Provide a query that shows the most purchased track of 2013

	Select Top.Name, Max(top.PurchaseCount)
	From (
	select t.Name, count(t.Name) PurchaseCount
	from Track t, Invoice i, InvoiceLine il
	Where i.InvoiceDate Like "2013%"
	And i.InvoiceId = il.InvoiceId
	And il.TrackId = t.TrackId
	group by t.Name) as Top;


	select t.Name, count(il.TrackId) PurchaseCount
	from Track t, Invoice i, InvoiceLine il
	Where i.InvoiceDate Like "2013%"
	And i.InvoiceId = il.InvoiceId
	And il.TrackId = t.TrackId
	group by t.Name
	order by PurchaseCount desc
    limit 1;