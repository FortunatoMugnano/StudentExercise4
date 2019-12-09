--STUDENTS FIRST AND LAST NAME WITH COHORT NAME IF THEY ARE IN COHORT 35--
SELECT 
Student.Firstname,
Student.LastName,
Cohort.Name
FROM Student 
LEFT JOIN Cohort on CohortId = Cohort.Id
WHERE Cohort.Name = 'Cohort 35';


--INSTRUCTORS ORDERD BY LAST NAME--
SELECT *
FROM Instructor
ORDER BY LastName ASC;

--INSTRUCTORS UNIQUE SPECIALITY--
SELECT DISTINCT Speciality FROM Instructor;

--STUDENTS WITH THE NAME OF THE EXERCISES THEY HAVE BEEN ASSIGNED--
SELECT
Student.FirstName,
Student.LastName,
Exercise.Name,
Exercise.Language
FROM Exercise 
RIGHT JOIN StudentExercise on ExerciseId = Exercise.Id
RIGHT JOIN Student on StudentId = Student.Id
WHERE StudentExercise.ExerciseId IS NOT NULL;

--STUDENTS WITH THE COUNT OF EXERCISES ASSIGNED--
SELECT
Student.FirstName,
Student.LastName,
COUNT(EXERCISE.NAME)
FROM Exercise
RIGHT JOIN StudentExercise on ExerciseId = Exercise.Id
RIGHT JOIN Student on StudentId = Student.Id
GROUP BY Student.FirstName,
Student.LastName;
