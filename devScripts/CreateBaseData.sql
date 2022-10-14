USE jhoney;

INSERT INTO FoodType
(Type)
VALUES
('Homemade')
,('Dry')
,('Wet')
,('Gourmet')


DECLARE @homemadeId INT, @dryId INT, @wetId INT;

SELECT @homemadeId = Id FROM FoodType WHERE Type = 'Homemade';
SELECT @dryId = Id FROM FoodType WHERE Type = 'Dry';
SELECT @wetId = Id FROM FoodType WHERE Type = 'Wet';

INSERT INTO Food
(TypeId, Name, LabelName)
VALUES
(@homemadeId, 'Boiled Chicken', null)
,(@dryId, 'Standard','Purina')
,(@dryId, 'High Praire','Taste Of The Wild')
,(@dryId, 'Standard', 'Blue Buffalo')
,(@wetId, 'Standard', 'Pedigree')

DECLARE @mowgsFavoriteFood INT;

SELECT
@mowgsFavoriteFood = Id
FROM Food
WHERE Name = 'High Praire'

INSERT INTO Dog
(Likes, Name, Breed)
VALUES
(@mowgsFavoriteFood, 'Mowgli', 'Mutt')
,(@mowgsFavoriteFood, 'Elphaba', 'Poodle')


DROP TABLE IF EXISTS #friends;

SELECT
Id,
Name
INTO #friends
FROM Dog
WHERE Name IN ('Mowgli', 'Elphaba')

INSERT INTO DogFriend
(DogId, FriendId)
SELECT
f.Id
,f2.Id
FROM #friends f
LEFT JOIN #friends f2 ON f2.Id <> f.Id
WHERE f.Name = 'Mowgli'
AND f2.Name = 'Elphaba';