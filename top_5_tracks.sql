	-- Provide a query that shows the top 5 most purchased tracks over all.
    select 
        t.Name TrackName, 
        Count(t.Name) PurchaseCount
	from Track t
	join InvoiceLine l on l.TrackId = t.TrackId
	group by t.Name
	order by PurchaseCount desc
	limit 5;