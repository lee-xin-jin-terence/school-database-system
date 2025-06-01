CREATE TABLE School (
    schoolId INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    town VARCHAR(100) NOT NULL,
    street VARCHAR(100) NOT NULL,
    postcode VARCHAR(10) NOT NULL,
    phoneNumber VARCHAR(20) NOT NULL
);



CREATE TABLE Subject (
    subjectId INT IDENTITY(1,1) PRIMARY KEY,
    subjectTitle VARCHAR(100) NOT NULL,
    subjectType VARCHAR(50) NOT NULL   
);



CREATE TABLE Student (
    studentId INT IDENTITY(1,1) PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    gender CHAR(1) NOT NULL,
    dateOfBirth DATE NOT NULL,
    schoolId INT NOT NULL,
    FOREIGN KEY (schoolId) REFERENCES School(schoolId)
);





CREATE TABLE Teacher (
    teacherId INT IDENTITY(1,1) PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    gender CHAR(1) NOT NULL,               
    qualifications VARCHAR(100) NOT NULL,     
    schoolId INT NOT NULL,                  
    FOREIGN KEY (schoolId) REFERENCES School(schoolId)
);




CREATE TABLE TeacherTeachingRecord (
    recordId INT IDENTITY(1,1) PRIMARY KEY,
    teacherId INT NOT NULL,
    subjectId INT NOT NULL,
    term VARCHAR(20) NOT NULL,        -- e.g., 'Term 1', 'Term 2', 'Midterm', 'Final'
    year INT NOT NULL,
    hoursTaught INT NOT NULL,
    FOREIGN KEY (teacherId) REFERENCES Teacher(teacherId),
    FOREIGN KEY (subjectId) REFERENCES Subject(subjectId)
);



CREATE TABLE SubjectResult (
    resultId INT IDENTITY(1,1) PRIMARY KEY,
    studentId INT NOT NULL,
    subjectId INT NOT NULL,
    term VARCHAR(20) NOT NULL,
    year INT NOT NULL,
    marks DECIMAL(5,2),
    grade VARCHAR(5),
    CONSTRAINT FK_SubjectResult_Student FOREIGN KEY (studentId) REFERENCES Student(studentId),
    CONSTRAINT FK_SubjectResult_Subject FOREIGN KEY (subjectId) REFERENCES Subject(subjectId),
    CONSTRAINT UQ_SubjectResult_Composite UNIQUE (subjectId, studentId, term, year)
);



CREATE TABLE Principal (
    principalId INT IDENTITY(1,1) PRIMARY KEY,
    schoolId INT NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE NULL,
    FOREIGN KEY (schoolId) REFERENCES School(schoolId)
);


