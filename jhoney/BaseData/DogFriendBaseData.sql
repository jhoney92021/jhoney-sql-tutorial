USE jhoney;

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