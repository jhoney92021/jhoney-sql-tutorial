USE jhoney;

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