USE jhoney;

DROP TABLE IF EXISTS Meeting;

CREATE TABLE Meeting
(
    Id INT IDENTITY PRIMARY KEY,
    TypeId INT NOT NULL,
    FriendsId INT NOT NULL,
    PlaceId INT,


    TimeOfDay VARCHAR(20),
    Notes VARCHAR(255),

    FOREIGN KEY (TypeId) REFERENCES MeetingType(Id),
    FOREIGN KEY (FriendsId) REFERENCES DogFriend(Id),
    FOREIGN KEY (PlaceId) REFERENCES Place(Id)
);