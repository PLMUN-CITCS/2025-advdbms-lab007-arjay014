USE `UniversityDB`;

-- Step 4: Select FirstName and LastName for students enrolled on '2023-09-01'
SELECT `FirstName`, `LastName`
FROM `Students`
WHERE `EnrollmentDate` = '2023-09-01';
