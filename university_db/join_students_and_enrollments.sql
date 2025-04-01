USE `UniversityDB`;

-- Step 5: Join Students and Enrollments to list student enrollments
SELECT `s`.`FirstName`, `s`.`LastName`, `e`.`EnrollmentDate`, `c`.`CourseName`  -- Include CourseName
FROM `Students` AS `s`
INNER JOIN `Enrollments` AS `e` ON `s`.`StudentID` = `e`.`StudentID`
INNER JOIN `Courses` AS `c` ON `e`.`CourseID` = `c`.`CourseID`; -- Join with Courses table

-- Alternative (older, implicit join syntax - less preferred):
-- SELECT s.FirstName, s.LastName, e.EnrollmentDate, c.CourseName
-- FROM Students s, Enrollments e, Courses c
-- WHERE s.StudentID = e.StudentID AND e.CourseID = c.CourseID;
