USE jhoney;

DECLARE @dogPark INT, @lakeShore INT;

SELECT @dogPark = Id FROM PlaceType WHERE Type = 'Dog Park';
SELECT @lakeShore = Id FROM PlaceType WHERE Type = 'Lake Shore';

INSERT INTO Place
(TypeId, Title)
VALUES
(@dogPark, 'Apartment Park')
,(@lakeShore, 'Qual Lake')