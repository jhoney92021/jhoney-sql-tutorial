USE jhoney;

DROP TABLE IF EXISTS PlaceType;

CREATE TABLE PlaceType
(
    Id INT IDENTITY PRIMARY KEY,
    Type VARCHAR(20) NOT NULL,    
);