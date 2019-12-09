
 CREATE TABLE Cohort (
 Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
 Name varchar(55) NOT NULL
 );

CREATE TABLE Student (
 Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
 FirstName varchar(55) NOT NULL,
 LastName varchar(55) NOT NULL,
 SlackHandle varchar(55) NOT NULL,
 CohortId INTEGER NOT NULL,
 CONSTRAINT FK_Student_Cohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
 );

 CREATE TABLE Exercise (
 Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
 Name varchar(55) NOT NULL,
 Language varchar(55) NOT NULL
 );

 

 CREATE TABLE Instructor (
 Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
 FirstName varchar(55) NOT NULL,
 LastName varchar(55) NOT NULL,
 SlackHandle varchar(55) NOT NULL,
 Speciality varchar(55) NOT NULL,
 CohortId INTEGER NOT NULL,
 CONSTRAINT FK_Instructor_Cohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
);

CREATE TABLE StudentExercise (
Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
StudentId INTEGER NOT NULL,
ExerciseId INTEGER NOT NULL,
CONSTRAINT FK_StudentExercise_Student FOREIGN KEY(StudentId) REFERENCES Student(Id),
CONSTRAINT FK_StudentExercise_Exercise FOREIGN KEY(ExerciseId) REFERENCES Exercise(Id)
);



--CREATING COHORTS--
INSERT INTO Cohort (Name) VALUES ('Cohort 35');
INSERT INTO Cohort (Name) VALUES ('Cohort 36');
INSERT INTO Cohort (Name) VALUES ('Cohort 37');


--CREATING STUDENTS--
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Fortunato', 'Mugnano', 'fortunato.mugnano', 1);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Seth', 'Oakly', 'seth.oakly', 1);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('David', 'Cornish', 'david.cornish', 1);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Phil', 'Grismor', 'phil.grismor', 2);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Nick', 'Riviera', 'nick.riviera', 2);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Mark', 'Lendez', 'mark.lendez', 3);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Lauren', 'Ciccio', 'lauren.ciccio', 3);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Summer', 'Laddington', 'summer.laddington', 3);
INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) VALUES ('Grady', 'Brown', 'gradi.brown', 2);

--CREATIN INSTRUCTORS--
INSERT INTO Instructor (FirstName, LastName, SlackHandle, Speciality, CohortId) VALUES ('Adam', 'Shreffer', 'adam.shreffer', 'knowlogment', 1); 
INSERT INTO Instructor (FirstName, LastName, SlackHandle, Speciality, CohortId) VALUES ('Mady', 'Piper', 'madi.piper', 'smile', 1);
INSERT INTO Instructor (FirstName, LastName, SlackHandle, Speciality, CohortId) VALUES ('Brenda', 'Long', 'brenda.long', 'laughing', 3);
INSERT INTO Instructor (FirstName, LastName, SlackHandle, Speciality, CohortId) VALUES ('Mo', 'Silvera', 'mo.silvera', 'travel', 2);




--CREATING EXERCISES--
INSERT INTO Exercise (Name, Language) VALUES ('ForLoop', 'Javascript');
INSERT INTO Exercise (Name, Language) VALUES ('FlexBox', 'Css');
INSERT INTO Exercise (Name, Language) VALUES ('Methods', 'Javascript');
INSERT INTO Exercise (Name, Language) VALUES ('Interfaces', 'C#');
INSERT INTO Exercise (Name, Language) VALUES ('Database', 'SQL');

--CREATING STUDENT EXERCISES--
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (1, 1);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (1, 5);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (1, 4);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (2, 1);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (2, 3);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (3, 1);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (3, 5);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (5, 4);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (5, 2);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (6, 3);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (6, 1);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (7, 2);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (8, 5);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (8, 3);
INSERT INTO StudentExercise (StudentId, ExerciseId) VALUES (9, 1);




