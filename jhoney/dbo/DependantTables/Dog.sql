USE jhoney;

DROP TABLE IF EXISTS Dog;

CREATE TABLE Dog
(
    Id INT IDENTITY PRIMARY KEY,
    Likes INT NOT NULL,

    Name VARCHAR(20),
    Breed VARCHAR(20),
    BreakFastTime DATETIME
    
    FOREIGN KEY (Likes) REFERENCES Food(Id)
);
