SELECT *
FROM ARTIST;
SELECT *
FROM ART_OBJECT;
SELECT *
FROM COLLECTIONS;
SELECT *
FROM EXHIBITIONS;
SELECT *
FROM BORROWED;
SELECT *
FROM PERMANENT_COLLECTION;
SELECT *
FROM PAINTING;
SELECT *
FROM SCULPTURE;
SELECT *
FROM STATUE;
SELECT *
FROM OTHER;
SELECT *
FROM DISPLAYS;
select ao.Title,
    ao.Year,
    pa.DrawnOn,
    ao.Artist,
    a.CountryOfOrigin
FROM (
        (
            (
                ART_OBJECT ao
                join ARTIST a ON ao.Artist = a.Name
            )
            join PAINTING pa ON ao.id_no = pa.id_no
        )
        join DISPLAYS d ON ao.id_no = d.id_no
    )
    join EXHIBITIONS ex ON d.Name = ex.Name
WHERE ex.Name IN ('Morning Mist');
SELECT p.Style,
    p.DrawnOn,
    ao.Title,
    ao.Year
FROM (
        ART_OBJECT ao
        join ARTIST a ON ao.Artist = a.Name
    )
    join PAINTING p ON ao.id_no = p.id_no
WHERE a.Name = 'Monet'
    AND EXISTS (
        SELECT *
        WHERE p.PaintType = 'oil'
            OR p.PaintType = 'watercolor'
    );
SELECT Material,
    COUNT(*),
    MIN(Weight),
    MAX(Weight)
FROM SCULPTURE
GROUP BY(Material);
SELECT COUNT(*)
FROM (
        COLLECTIONS c
        join BORROWED b ON c.Name = b.Collection
    )
    join ART_OBJECT ao ON c.id_no = ao.id_no
WHERE c.Name = 'Barnes';