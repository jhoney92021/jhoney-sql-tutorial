USE jhoney;

DROP TABLE IF EXISTS Dog;

CREATE TABLE Dog
(
    Id INT IDENTITY PRIMARY KEY,
    Likes INT NOT NULL,
    MainHumanId INT,

    Name VARCHAR(20),
    Breed VARCHAR(20)   
    
    FOREIGN KEY (Likes) REFERENCES Food(Id)
    FOREIGN KEY (MainHumanId) REFERENCES Human(Id)
);
