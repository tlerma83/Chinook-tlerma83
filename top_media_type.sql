-- Provide a query that shows the most purchased Media Type.
SELECT top.MediaTypes, Max(top.TimesPurchased)
From (
	select 
		m.Name As MediaTypes,
		(count(il.InvoiceId)) TimesPurchased
	From InvoiceLine il
	Inner Join Track t On il.TrackId = t.TrackId
	Inner Join MediaType m  On t.MediaTypeId = m.MediaTypeId
	Group By MediaTypes) As top;