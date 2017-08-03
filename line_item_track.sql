-- Provide a query that includes the purchased track name with each invoice line item
Select il. *, t.Name
From InvoiceLine il, Track t
Where il.TrackId = t.TrackId;