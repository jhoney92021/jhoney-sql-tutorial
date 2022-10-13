USE jhoney;

DECLARE @mowgsFavoriteFood INT;

SELECT
@mowgsFavoriteFood = Id
FROM Food
WHERE Label = 'Taste Of The Wild'

INSERT INTO Dog
(Likes, Name, Breed)
VALUES
(@mowgsFavoriteFood, 'Mowgli', 'Mutt')
,(@mowgsFavoriteFood, 'Elphaba', 'Poodle')