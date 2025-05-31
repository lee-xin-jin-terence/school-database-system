CREATE TABLE School (
    schoolId INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    town VARCHAR(100) NOT NULL,
    street VARCHAR(100) NOT NULL,
    postcode VARCHAR(10) NOT NULL,
    phoneNumber VARCHAR(20) NOT NULL
);

CREATE TABLE Subject (
    subjectId INT AUTO_INCREMENT PRIMARY KEY,
    subjectTitle VARCHAR(100) NOT NULL,
    subjectType VARCHAR(50) NOT NULL
);

CREATE TABLE Student (
    studentId INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    gender CHAR(1) NOT NULL,
    dateOfBirth DATE NOT NULL,
    schoolId INT NOT NULL,
    FOREIGN KEY (schoolId) REFERENCES School(schoolId)
);

CREATE TABLE Teacher (
    teacherId INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    gender CHAR(1) NOT NULL,
    qualifications VARCHAR(100) NOT NULL,
    schoolId INT NOT NULL,
    FOREIGN KEY (schoolId) REFERENCES School(schoolId)
);

CREATE TABLE TeacherTeachingRecord (
    recordId INT AUTO_INCREMENT PRIMARY KEY,
    teacherId INT NOT NULL,
    subjectId INT NOT NULL,
    term VARCHAR(20) NOT NULL,
    year INT NOT NULL,
    hoursTaught INT NOT NULL,
    FOREIGN KEY (teacherId) REFERENCES Teacher(teacherId),
    FOREIGN KEY (subjectId) REFERENCES Subject(subjectId)
);

CREATE TABLE SubjectResult (
    resultId INT AUTO_INCREMENT PRIMARY KEY,
    studentId INT NOT NULL,
    subjectId INT NOT NULL,
    term VARCHAR(20) NOT NULL,
    year INT NOT NULL,
    marks DECIMAL(5,2),
    grade VARCHAR(5),
    FOREIGN KEY (studentId) REFERENCES Student(studentId),
    FOREIGN KEY (subjectId) REFERENCES Subject(subjectId),
    UNIQUE KEY UQ_SubjectResult_Composite (subjectId, studentId, term, year)
);

CREATE TABLE Principal (
    principalId INT AUTO_INCREMENT PRIMARY KEY,
    schoolId INT NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE NULL,
    FOREIGN KEY (schoolId) REFERENCES School(schoolId)
);
