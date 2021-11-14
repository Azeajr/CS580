1.

SELECT

ao.Title AS 'Painting Title',

ao.Year AS 'Year Created',

pt.Material AS 'Material Used',

at.Name AS 'Artist Name',

at.Country_of_Origin AS 'Country of Origin'

FROM

DISPLAY dp

JOIN PAINTING pt ON pt.Id_No = dp.Id_No

JOIN ART_OBJECT ao on ao.Id_No = dp.Id_No

JOIN ARTIST at ON at.Name = ao.Artist

WHERE

dp.Name IN (SELECT Name

FROM EXHIBITIONS

WHERE Name = 'Morning mist');

For all oil or watercolor paintings by Monet retrieve painting style, material, title, and year when it was created.

 
2.

SELECT

pt.Style AS 'Painting Style',

pt.Material AS 'Material Used',

ao.Title AS 'Painting Title',

ao.Year AS 'Year Created'

FROM

PAINTING pt

JOIN ART_OBJECT ao on ao.Id_No = pt.Id_No

WHERE

EXISTS (SELECT at.Name

FROM ARTIST at

WHERE at.Name = 'Monet' AND at.Name = ao.Artist)

AND pt.Material IN ('oil', 'watercolor');

--c For sculptures display: material, the number of sculptures made of that material, and min and max weight of sculptures

 
3.

SELECT

Material,

Count(*) AS 'Number of Sculpture Made',

Min(Weight) AS 'Min weight of Sculpture',

Max(Weight) AS 'Max weight of Sculpture'

FROM

SCULPTURE sc

JOIN ART_OBJECT ao ON ao.Id_No = sc.Id_No

WHERE

ao.Title = 'Sculpture'

GROUP BY

Material;


4.

SELECT

Count(*) AS 'Number of Objects'

FROM

ART_OBJECT ao

JOIN BORROWED bd ON bd.Id_No = ao.Id_No

WHERE

bd.Borrowed_from_collection = 'Barnes collection'