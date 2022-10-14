USE jhoney;

DECLARE @homemadeId INT, @dryId INT, @wetId INT;

SELECT @homemadeId = Id FROM FoodType WHERE Type = 'Homemade';
SELECT @dryId = Id FROM FoodType WHERE Type = 'Dry';
SELECT @wetId = Id FROM FoodType WHERE Type = 'Wet';

INSERT INTO Food
(TypeId, Name, LabelName)
VALUES
(@homemadeId, 'Boiled Chicken', null)
,(@dryId, 'Standard','Purina')
,(@dryId, 'High Praire','Taste Of The Wild')
,(@dryId, 'Standard', 'Blue Buffalo')
,(@wetId, 'Standard', 'Pedigree')