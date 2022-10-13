USE jhoney;

DROP TABLE IF EXISTS DogFriend;

CREATE TABLE DogFriend
(
    Id INT IDENTITY PRIMARY KEY,
    FriendId INT,
	
    FOREIGN KEY (FriendId) REFERENCES Dog(Id)
);