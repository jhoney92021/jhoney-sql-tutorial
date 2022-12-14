USE jhoney;

DROP TABLE IF EXISTS Meeting;
DROP TABLE IF EXISTS Place;
DROP TABLE IF EXISTS DogFriend;
DROP TABLE IF EXISTS Dog;
DROP TABLE IF EXISTS Food;
DROP TABLE IF EXISTS FoodType;
DROP TABLE IF EXISTS PlaceType;
DROP TABLE IF EXISTS MeetingType;
DROP TABLE IF EXISTS Human;

CREATE TABLE Human
(
    Id INT IDENTITY PRIMARY KEY,
    Name VARCHAR(20),    
);

CREATE TABLE MeetingType
(
    Id INT IDENTITY PRIMARY KEY,
    Type VARCHAR(20) NOT NULL,    
);

CREATE TABLE PlaceType
(
    Id INT IDENTITY PRIMARY KEY,
    Type VARCHAR(20) NOT NULL,    
);

CREATE TABLE FoodType
(
    Id INT IDENTITY PRIMARY KEY,
    Type VARCHAR(20) NOT NULL,        
);

CREATE TABLE Food
(
    Id INT IDENTITY PRIMARY KEY,
    TypeId INT NOT NULL,    
    Name VARCHAR(20) NOT NULL,
	LabelName VARCHAR(20),
    
    FOREIGN KEY (TypeId) REFERENCES FoodType(Id)        
);

CREATE TABLE Dog
(
    Id INT IDENTITY PRIMARY KEY,
    Likes INT NOT NULL,
	 MainHumanId INT,

    Name VARCHAR(20),
    Breed VARCHAR(20)    
    
    FOREIGN KEY (Likes) REFERENCES Food(Id),
	FOREIGN KEY (MainHumanId) REFERENCES Human(Id)
);

CREATE TABLE DogFriend
(
    Id INT IDENTITY PRIMARY KEY,
	DogId INT,
    FriendId INT,
	
    FOREIGN KEY (DogId) REFERENCES Dog(Id),
	FOREIGN KEY (FriendId) REFERENCES Dog(Id)
);

CREATE TABLE Place
(
    Id INT IDENTITY PRIMARY KEY,
    TypeId INT,
    Title VARCHAR(20) NOT NULL,        

    FOREIGN KEY (TypeId) REFERENCES PlaceType(Id)    
);

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