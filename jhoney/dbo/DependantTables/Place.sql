USE jhoney;

DROP TABLE IF EXISTS Meeting;

CREATE TABLE Place
(
    Id INT IDENTITY PRIMARY KEY,
    TypeId INT,
    Title VARCHAR(20) NOT NULL,        

    FOREIGN KEY (TypeId) REFERENCES PlaceType(Id)    
);