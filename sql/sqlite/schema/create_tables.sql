CREATE TABLE School (
    schoolId INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    town TEXT NOT NULL,
    street TEXT NOT NULL,
    postcode TEXT NOT NULL,
    phoneNumber TEXT NOT NULL
);

CREATE TABLE Subject (
    subjectId INTEGER PRIMARY KEY AUTOINCREMENT,
    subjectTitle TEXT NOT NULL,
    subjectType TEXT NOT NULL
);

CREATE TABLE Student (
    studentId INTEGER PRIMARY KEY AUTOINCREMENT,
    firstName TEXT NOT NULL,
    lastName TEXT NOT NULL,
    gender TEXT NOT NULL CHECK (length(gender) = 1),
    dateOfBirth DATE NOT NULL,
    schoolId INTEGER NOT NULL,
    FOREIGN KEY (schoolId) REFERENCES School(schoolId)
);

CREATE TABLE Teacher (
    teacherId INTEGER PRIMARY KEY AUTOINCREMENT,
    firstName TEXT NOT NULL,
    lastName TEXT NOT NULL,
    gender TEXT NOT NULL CHECK (length(gender) = 1),
    qualification TEXT NOT NULL,
    schoolId INTEGER NOT NULL,
    FOREIGN KEY (schoolId) REFERENCES School(schoolId)
);

CREATE TABLE TeacherTeachingRecord (
    recordId INTEGER PRIMARY KEY AUTOINCREMENT,
    teacherId INTEGER NOT NULL,
    subjectId INTEGER NOT NULL,
    term TEXT NOT NULL,
    year INTEGER NOT NULL,
    hoursTaught INTEGER NOT NULL,
    FOREIGN KEY (teacherId) REFERENCES Teacher(teacherId),
    FOREIGN KEY (subjectId) REFERENCES Subject(subjectId)
);

CREATE TABLE SubjectResult (
    resultId INTEGER PRIMARY KEY AUTOINCREMENT,
    studentId INTEGER NOT NULL,
    subjectId INTEGER NOT NULL,
    term TEXT NOT NULL,
    year INTEGER NOT NULL,
    marks REAL,
    grade TEXT,
    FOREIGN KEY (studentId) REFERENCES Student(studentId),
    FOREIGN KEY (subjectId) REFERENCES Subject(subjectId),
    UNIQUE (subjectId, studentId, term, year)
);

CREATE TABLE Principal (
    principalId INTEGER PRIMARY KEY AUTOINCREMENT,
    schoolId INTEGER NOT NULL,
    firstName TEXT NOT NULL,
    lastName TEXT NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE,
    FOREIGN KEY (schoolId) REFERENCES School(schoolId)
);
