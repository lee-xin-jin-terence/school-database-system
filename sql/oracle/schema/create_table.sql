-- SCHOOL TABLE
CREATE TABLE School (
    schoolId NUMBER PRIMARY KEY,
    name NVARCHAR2(100) NOT NULL,
    town NVARCHAR2(100) NOT NULL,
    street NVARCHAR2(100) NOT NULL,
    postcode NVARCHAR2(10) NOT NULL,
    phoneNumber NVARCHAR2(20) NOT NULL
);

CREATE SEQUENCE seq_school START WITH 1 INCREMENT BY 1;
CREATE OR REPLACE TRIGGER trg_school_pk
BEFORE INSERT ON School
FOR EACH ROW
BEGIN
    :NEW.schoolId := seq_school.NEXTVAL;
END;


-- SUBJECT TABLE
CREATE TABLE Subject (
    subjectId NUMBER PRIMARY KEY,
    subjectTitle NVARCHAR2(100) NOT NULL,
    subjectType NVARCHAR2(50) NOT NULL
);

CREATE SEQUENCE seq_subject START WITH 1 INCREMENT BY 1;
CREATE OR REPLACE TRIGGER trg_subject_pk
BEFORE INSERT ON Subject
FOR EACH ROW
BEGIN
    :NEW.subjectId := seq_subject.NEXTVAL;
END;


-- STUDENT TABLE
CREATE TABLE Student (
    studentId NUMBER PRIMARY KEY,
    firstName NVARCHAR2(50) NOT NULL,
    lastName NVARCHAR2(50) NOT NULL,
    gender CHAR(1) NOT NULL,
    dateOfBirth DATE NOT NULL,
    schoolId NUMBER NOT NULL,
    FOREIGN KEY (schoolId) REFERENCES School(schoolId)
);

CREATE SEQUENCE seq_student START WITH 1 INCREMENT BY 1;
CREATE OR REPLACE TRIGGER trg_student_pk
BEFORE INSERT ON Student
FOR EACH ROW
BEGIN
    :NEW.studentId := seq_student.NEXTVAL;
END;


-- TEACHER TABLE
CREATE TABLE Teacher (
    teacherId NUMBER PRIMARY KEY,
    firstName NVARCHAR2(50) NOT NULL,
    lastName NVARCHAR2(50) NOT NULL,
    gender CHAR(1) NOT NULL,
    qualifications NVARCHAR2(100) NOT NULL,
    schoolId NUMBER NOT NULL,
    FOREIGN KEY (schoolId) REFERENCES School(schoolId)
);

CREATE SEQUENCE seq_teacher START WITH 1 INCREMENT BY 1;
CREATE OR REPLACE TRIGGER trg_teacher_pk
BEFORE INSERT ON Teacher
FOR EACH ROW
BEGIN
    :NEW.teacherId := seq_teacher.NEXTVAL;
END;


-- TEACHER TEACHING RECORD TABLE
CREATE TABLE TeacherTeachingRecord (
    recordId NUMBER PRIMARY KEY,
    teacherId NUMBER NOT NULL,
    subjectId NUMBER NOT NULL,
    term NVARCHAR2(20) NOT NULL,
    year NUMBER NOT NULL,
    hoursTaught NUMBER NOT NULL,
    FOREIGN KEY (teacherId) REFERENCES Teacher(teacherId),
    FOREIGN KEY (subjectId) REFERENCES Subject(subjectId)
);

CREATE SEQUENCE seq_ttr START WITH 1 INCREMENT BY 1;
CREATE OR REPLACE TRIGGER trg_ttr_pk
BEFORE INSERT ON TeacherTeachingRecord
FOR EACH ROW
BEGIN
    :NEW.recordId := seq_ttr.NEXTVAL;
END;


-- SUBJECT RESULT TABLE
CREATE TABLE SubjectResult (
    resultId NUMBER PRIMARY KEY,
    studentId NUMBER NOT NULL,
    subjectId NUMBER NOT NULL,
    term NVARCHAR2(20) NOT NULL,
    year NUMBER NOT NULL,
    marks NUMBER(5,2),
    grade NVARCHAR2(5),
    CONSTRAINT FK_SubjectResult_Student FOREIGN KEY (studentId) REFERENCES Student(studentId),
    CONSTRAINT FK_SubjectResult_Subject FOREIGN KEY (subjectId) REFERENCES Subject(subjectId),
    CONSTRAINT UQ_SubjectResult_Composite UNIQUE (subjectId, studentId, term, year)
);

CREATE SEQUENCE seq_result START WITH 1 INCREMENT BY 1;
CREATE OR REPLACE TRIGGER trg_result_pk
BEFORE INSERT ON SubjectResult
FOR EACH ROW
BEGIN
    :NEW.resultId := seq_result.NEXTVAL;
END;


-- PRINCIPAL TABLE
CREATE TABLE Principal (
    principalId NUMBER PRIMARY KEY,
    schoolId NUMBER NOT NULL,
    firstName NVARCHAR2(50) NOT NULL,
    lastName NVARCHAR2(50) NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE,
    FOREIGN KEY (schoolId) REFERENCES School(schoolId)
);

CREATE SEQUENCE seq_principal START WITH 1 INCREMENT BY 1;
CREATE OR REPLACE TRIGGER trg_principal_pk
BEFORE INSERT ON Principal
FOR EACH ROW
BEGIN
    :NEW.principalId := seq_principal.NEXTVAL;
END;

