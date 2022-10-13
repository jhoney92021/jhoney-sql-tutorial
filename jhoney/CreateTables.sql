CREATE TABLE Food
(
    Id INT NOT NULL,
    Label VARCHAR(20),    

    PRIMARY KEY (ID) 
);

CREATE TABLE Dog
(
    Id INT NOT NULL,
    Likes INT NOT NULL,

    Name VARCHAR(20),
    Breed VARCHAR(20),
    BreakFastTime DATETIME

    PRIMARY KEY (ID) 
    FOREIGN KEY (Likes) REFERENCES Food(Id)
);

CREATE TABLE DogFriend
(
    Id INT NOT NULL,
    FriendId INT,

    PRIMARY KEY (Id),
    FOREIGN KEY (FriendId) REFERENCES Dog(Id)
);