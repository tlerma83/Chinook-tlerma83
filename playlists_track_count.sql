-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table
select 
    Count(pt.TrackId) As "Tracks on a Playlist",
    p.Name As Genre
From PlaylistTrack pt, Playlist p
Where pt.PlaylistId = p.PlaylistId
Group By p.Name;