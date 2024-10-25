-- Dataset: Titanic dataset
-- Schema: tested 
-- (PassengerId, Survived, Pclass, Name, Sex, Age, Parch, Ticket, Fare, Cabin, Embarked)
-- Link: here
-- List of tasks:
-- Display female passengers who survived and are older than 30.
-- Find the average age of men who didn't survive.
-- Display information for passengers who spent between $20 and $50 on their tickets and got on the ship at port 'C'."
-- Find the total number of the survivors in the first class.
-- . Show the information of passengers who boarded from Cherbourg (port 'C') and spent more than $75 on their tickets.".
SELECT
    *
FROM
    Titanic dataset
WHERE
    Sex = 'female'
    AND Survived = 1
    AND Age > 30;

SELECT
    AVG(Age) AS Average_Age
FROM
    Titanic dataset
WHERE
    Sex = 'male'
    AND Survived = 0;

SELECT
    *
FROM
    Titanic dataset
WHERE
    Fare BETWEEN 20
    AND 50
    AND Embarked = 'C';

SELECT
    COUNT(*) AS First_Class_Survivors
FROM
    Titanic dataset
WHERE
    Survived = 1
    AND Pclass = 1;

SELECT
    *
FROM
    Titanic dataset
WHERE
    Embarked = 'C'
    AND Fare > 75