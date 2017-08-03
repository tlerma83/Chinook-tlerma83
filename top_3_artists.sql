-- Provide a query that shows the top 3 best selling artists.
select
		a.Name As Artist, 
        Count(il.TrackId) As TimesPurchased
From InvoiceLine il, Track t, Album al, Artist a
Where il.TrackId = t.TrackId
And al.AlbumId = t.AlbumId
And a.ArtistId = al.ArtistId
Group By a.Name
Order By TimesPurchased desc
limit 3;