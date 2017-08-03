-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

-- // This query returns all invoices even if Artist is Null by using the Composer Column in the Track Table
Select 
    il. *, 
    t.Name As "Song Title", 
    t.Composer As "Artist"
From InvoiceLine il, Track t
Where il.TrackId = t.TrackId;

-- // This query returns all invoices that only have an Artist listed. 
Select 
    il.*, 
    t.Name AS SongName, 
    a.Name AS ArtistName
From InvoiceLine il,  Track t, Album al, Artist a
Where il.TrackId = t.TrackId
And t.AlbumId = al.AlbumId
And al.ArtistId = a.ArtistId
Order By ArtistName;