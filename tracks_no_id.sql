-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.
-- // Using inner join example
select 
	t.Name As "Track Name", 
	al.Title As "Album Title", 
	m.Name As "MediaType", 
	g.Name As "Genre"
From Track t
Inner Join Album  al
on al.AlbumId = t.AlbumId
Inner Join MediaType m 
on m.MediaTypeId = t.MediaTypeId
Inner Join Genre g
on g.GenreId = t.GenreId
Group By t.Name;


-- // Without Inner Join, Data is the same
select
	t.Name As "Track Name", 
	al.Title As "Album Title", 
	m.Name As "MediaType", 
	g.Name As "Genre"
From Track t, Album al, MediaType m, Genre g
Where t.AlbumId = al.AlbumId
And t.MediaTypeId = m. MediaTypeId
And t.GenreId = g.GenreId
Group By t.Name;