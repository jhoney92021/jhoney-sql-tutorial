USE jhoney;

DROP TABLE IF EXISTS MeetingType;

CREATE TABLE MeetingType
(
    Id INT IDENTITY PRIMARY KEY,
    Type VARCHAR(20) NOT NULL,    
);