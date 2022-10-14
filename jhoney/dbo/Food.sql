USE jhoney;

DROP TABLE IF EXISTS Food;

CREATE TABLE Food
(
    Id INT IDENTITY PRIMARY KEY,
    TypeId INT NOT NULL,    
    Name VARCHAR(20) NOT NULL,
    LabelName VARCHAR(20),
    
    FOREIGN KEY (TypeId) REFERENCES FoodType(Id)        
);