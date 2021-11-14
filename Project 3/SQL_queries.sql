select ao.Title, ao.Year, pa.DrawnOn, ao.Artist, a.CountryOfOrigin
FROM (((ART_OBJECT ao join PAINTING pa USING id_no) join EXHIBITS e USING id_no) join EXHIBITIONS ex ON e.Name=ex.Name)
WHERE ex.Name IN ('Monrning Mist');