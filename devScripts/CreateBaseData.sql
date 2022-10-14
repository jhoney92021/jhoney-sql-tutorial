USE jhoney;

INSERT INTO Human
(Name)
VALUES
('Justin')
,('David')
,('Carrie')

INSERT INTO PlaceType
(Type)
VALUES
('Dog Park')
,('Park')
,('Lake Shore')
,('Hiking Trail')

DECLARE @dogPark INT, @lakeShore INT;

SELECT @dogPark = Id FROM PlaceType WHERE Type = 'Dog Park';
SELECT @lakeShore = Id FROM PlaceType WHERE Type = 'Lake Shore';

INSERT INTO Place
(TypeId, Title)
VALUES
(@dogPark, 'Apartment Park')
,(@lakeShore, 'Quail Lake')

INSERT INTO MeetingType
(Type)
VALUES
('Just Because')
,('Training')
,('Playing')
,('Exploring')


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

DECLARE @mowgsFavoriteFood INT, @elfsFave INT, @jhoney INT, @neighbor INT;

SELECT @jhoney = Id FROM Human WHERE Name = 'Justin';
SELECT @neighbor = Id FROM Human WHERE Name = 'Carrie';
SELECT @mowgsFavoriteFood = Id FROM Food WHERE Name = 'High Praire';
SELECT @elfsFave = Id FROM Food WHERE Name = 'Boiled Chicken';

INSERT INTO Dog
(Likes, Name, Breed, MainHumanId)
VALUES
(@mowgsFavoriteFood, 'Mowgli', 'Mutt', @jhoney)
,(@mowgsFavoriteFood, 'Elphaba', 'Poodle', @neighbor)


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

DECLARE @justCus INT, @mowgsAndElfie INT, @aptPark INT;

SELECT @justCus = Id FROM MeetingType WHERE Type = 'Just Because';
SELECT @aptPark = Id FROM Place WHERE Title = 'Apartment Park';

SELECT 
@mowgsAndElfie = df.Id 
FROM DogFriend df
JOIN Dog d1 ON d1.Id = df.DogId
JOIN Dog d2 ON d2.Id = df.FriendId
WHERE d1.Name = 'Mowgli'
AND d2.Name = 'Elphaba';

INSERT INTO Meeting
(TypeId, FriendsId, PlaceId, TimeofDay, Notes)
VALUES
(@justCus, @mowgsAndElfie, @aptPark, 'Evening', 'Elphie can jump crazy high!')