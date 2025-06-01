
INSERT ALL
    INTO School (name, town, street, postcode, phoneNumber) VALUES ('Greenfield Secondary School', 'Bedok', '123 East Avenue', '460123', '6123-4567')
    INTO School (name, town, street, postcode, phoneNumber) VALUES ('North Ridge High School', 'Woodlands', '456 North Road', '738456', '6892-1134')
    INTO School (name, town, street, postcode, phoneNumber) VALUES ('Sunshine Primary School', 'Tampines', '789 Sunshine Blvd', '529789', '6345-9988')
    INTO School (name, town, street, postcode, phoneNumber) VALUES ('Westlake International School', 'Bukit Batok', '321 Hillview Drive', '659321', '6899-7744')
    INTO School (name, town, street, postcode, phoneNumber) VALUES ('Meridian Secondary School', 'Pasir Ris', '987 Meridian Walk', '519987', '6587-2233')
SELECT * FROM dual;
-- dual is a dummy table used only for insert all


INSERT ALL
    INTO Subject (subjectTitle, subjectType) VALUES ('Mathematics', 'Core')
    INTO Subject (subjectTitle, subjectType) VALUES ('English Language', 'Core')
    INTO Subject (subjectTitle, subjectType) VALUES ('Science', 'Core')
    INTO Subject (subjectTitle, subjectType) VALUES ('History', 'Elective')
    INTO Subject (subjectTitle, subjectType) VALUES ('Geography', 'Elective')
    INTO Subject (subjectTitle, subjectType) VALUES ('Malay Language', 'Language')
    INTO Subject (subjectTitle, subjectType) VALUES ('Chinese Language', 'Language')
    INTO Subject (subjectTitle, subjectType) VALUES ('Tamil Language', 'Language')
    INTO Subject (subjectTitle, subjectType) VALUES ('Art', 'Elective')
    INTO Subject (subjectTitle, subjectType) VALUES ('Physical Education', 'Core')
    INTO Subject (subjectTitle, subjectType) VALUES ('Computer Science', 'Elective')
    INTO Subject (subjectTitle, subjectType) VALUES ('Music', 'Elective')
SELECT * FROM dual;


INSERT ALL
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Farah', 'Ahmad', 'F', TO_DATE('2008-04-15', 'YYYY-MM-DD'), 1)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Wei', 'Chen', 'M', TO_DATE('2007-11-20', 'YYYY-MM-DD'), 2)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Arjun', 'Kumar', 'M', TO_DATE('2008-07-05', 'YYYY-MM-DD'), 3)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Nurul', 'Hassan', 'F', TO_DATE('2007-09-18', 'YYYY-MM-DD'), 4)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Liang', 'Tan', 'F', TO_DATE('2008-01-25', 'YYYY-MM-DD'), 5)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Ravi', 'Singh', 'M', TO_DATE('2007-12-03', 'YYYY-MM-DD'), 1)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Aina', 'Rahman', 'F', TO_DATE('2008-03-10', 'YYYY-MM-DD'), 2)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Jian', 'Lim', 'M', TO_DATE('2008-06-28', 'YYYY-MM-DD'), 3)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Siti', 'Zahra', 'F', TO_DATE('2007-05-14', 'YYYY-MM-DD'), 4)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Manpreet', 'Kaur', 'F', TO_DATE('2008-08-19', 'YYYY-MM-DD'), 5)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Dinesh', 'Nair', 'M', TO_DATE('2007-04-23', 'YYYY-MM-DD'), 1)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Melati', 'Ismail', 'F', TO_DATE('2008-02-12', 'YYYY-MM-DD'), 2)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Wei Ling', 'Chong', 'F', TO_DATE('2007-10-30', 'YYYY-MM-DD'), 3)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Arvind', 'Reddy', 'M', TO_DATE('2008-09-02', 'YYYY-MM-DD'), 4)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Norah', 'Abdullah', 'F', TO_DATE('2007-07-22', 'YYYY-MM-DD'), 5)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Kiran', 'Sharma', 'M', TO_DATE('2008-11-11', 'YYYY-MM-DD'), 1)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Hafiz', 'Mohamed', 'M', TO_DATE('2007-03-07', 'YYYY-MM-DD'), 2)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Li Mei', 'Wong', 'F', TO_DATE('2008-05-16', 'YYYY-MM-DD'), 3)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Surya', 'Nambiar', 'M', TO_DATE('2007-08-25', 'YYYY-MM-DD'), 4)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Siti Nur', 'Rahim', 'F', TO_DATE('2008-12-04', 'YYYY-MM-DD'), 5)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Raj', 'Patel', 'M', TO_DATE('2007-06-13', 'YYYY-MM-DD'), 1)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Faridah', 'Hussain', 'F', TO_DATE('2008-09-27', 'YYYY-MM-DD'), 2)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Xiao', 'Liu', 'M', TO_DATE('2007-02-19', 'YYYY-MM-DD'), 3)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Deepa', 'Menon', 'F', TO_DATE('2008-07-29', 'YYYY-MM-DD'), 4)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Ismail', 'Mohd', 'M', TO_DATE('2007-11-06', 'YYYY-MM-DD'), 5)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Ayesha', 'Khan', 'F', TO_DATE('2008-01-04', 'YYYY-MM-DD'), 1)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Wei Jie', 'Tan', 'M', TO_DATE('2007-05-28', 'YYYY-MM-DD'), 2)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Shanthi', 'Raj', 'F', TO_DATE('2008-03-21', 'YYYY-MM-DD'), 3)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Ahmad', 'Yusuf', 'M', TO_DATE('2007-09-12', 'YYYY-MM-DD'), 4)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Mei Ling', 'Ho', 'F', TO_DATE('2008-06-07', 'YYYY-MM-DD'), 5)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Arun', 'Kumar', 'M', TO_DATE('2007-10-17', 'YYYY-MM-DD'), 1)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Hani', 'Zainal', 'F', TO_DATE('2008-04-02', 'YYYY-MM-DD'), 2)
  INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES ('Kumar', 'Rajan', 'M', TO_DATE('2007-08-01', 'YYYY-MM-DD'), 3)
SELECT * FROM dual;



INSERT ALL
    INTO Teacher (firstName, lastName, gender, qualifications, schoolId) VALUES ('James', 'Lim', 'M', 'B.Ed, M.Ed', 1)
    INTO Teacher (firstName, lastName, gender, qualifications, schoolId) VALUES ('Aisha', 'Yusof', 'F', 'B.Sc, PGDE', 2)
    INTO Teacher (firstName, lastName, gender, qualifications, schoolId) VALUES ('Rajesh', 'Nair', 'M', 'M.Sc, B.Ed', 3)
    INTO Teacher (firstName, lastName, gender, qualifications, schoolId) VALUES ('Chloe', 'Tan', 'F', 'B.A., PGDE', 1)
    INTO Teacher (firstName, lastName, gender, qualifications, schoolId) VALUES ('Imran', 'Abdullah', 'M', 'B.Ed', 2)
    INTO Teacher (firstName, lastName, gender, qualifications, schoolId) VALUES ('Siti', 'Zainal', 'F', 'B.A., M.Ed', 3)
    INTO Teacher (firstName, lastName, gender, qualifications, schoolId) VALUES ('Marcus', 'Goh', 'M', 'B.Sc', 4)
    INTO Teacher (firstName, lastName, gender, qualifications, schoolId) VALUES ('Anita', 'Menon', 'F', 'M.A., PGDE', 5)
    INTO Teacher (firstName, lastName, gender, qualifications, schoolId) VALUES ('Vinod', 'Das', 'M', 'PhD, B.Ed', 5)
    INTO Teacher (firstName, lastName, gender, qualifications, schoolId) VALUES ('Wei Ling', 'Ong', 'F', 'B.Ed', 1)
    INTO Teacher (firstName, lastName, gender, qualifications, schoolId) VALUES ('Daniel', 'Sim', 'M', 'M.Sc', 4)
    INTO Teacher (firstName, lastName, gender, qualifications, schoolId) VALUES ('Meena', 'Ravi', 'F', 'B.Ed, M.Ed', 2)
    INTO Teacher (firstName, lastName, gender, qualifications, schoolId) VALUES ('Hakim', 'Rahmat', 'M', 'B.Sc, PGDE', 3)
    INTO Teacher (firstName, lastName, gender, qualifications, schoolId) VALUES ('Serene', 'Ng', 'F', 'B.Ed', 5)
    INTO Teacher (firstName, lastName, gender, qualifications, schoolId) VALUES ('Arjun', 'Reddy', 'M', 'B.Tech, M.Ed', 4)
SELECT * FROM dual;



INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (1, 1, 'Term 1', 2024, 88.5, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (1, 2, 'Term 1', 2024, 92.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (1, 3, 'Term 2', 2024, 85.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (1, 4, 'Term 2', 2024, 78.0, 'B');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (2, 1, 'Term 1', 2024, 75.0, 'B');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (2, 5, 'Term 1', 2024, 80.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (2, 6, 'Term 2', 2024, 70.0, 'C+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (2, 7, 'Term 2', 2024, 88.0, 'A');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (3, 3, 'Term 1', 2024, 82.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (3, 8, 'Term 1', 2024, 90.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (3, 9, 'Term 2', 2024, 76.0, 'B');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (3, 10, 'Term 2', 2024, 85.0, 'B+');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (4, 1, 'Term 1', 2024, 90.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (4, 2, 'Term 1', 2024, 88.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (4, 3, 'Term 2', 2024, 85.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (4, 5, 'Term 2', 2024, 70.0, 'C+');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (5, 6, 'Term 1', 2024, 68.5, 'C+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (5, 7, 'Term 1', 2024, 74.0, 'B');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (5, 8, 'Term 2', 2024, 80.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (5, 9, 'Term 2', 2024, 82.0, 'B+');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (6, 10, 'Term 1', 2024, 79.0, 'B');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (6, 11, 'Term 1', 2024, 83.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (6, 12, 'Term 2', 2024, 88.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (6, 1, 'Term 2', 2024, 90.0, 'A');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (7, 2, 'Midterm', 2023, 85.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (7, 3, 'Midterm', 2023, 80.0, 'B');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (7, 4, 'Final', 2023, 75.0, 'B-');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (7, 5, 'Final', 2023, 78.0, 'B');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (8, 6, 'Midterm', 2023, 91.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (8, 7, 'Midterm', 2023, 87.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (8, 8, 'Final', 2023, 83.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (8, 9, 'Final', 2023, 85.0, 'B+');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (9, 10, 'Term 1', 2024, 72.0, 'B-');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (9, 11, 'Term 1', 2024, 74.0, 'C+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (9, 12, 'Term 2', 2024, 77.0, 'B-');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (9, 1, 'Term 2', 2024, 80.0, 'B');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (10, 2, 'Term 1', 2024, 89.5, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (10, 3, 'Term 1', 2024, 90.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (10, 4, 'Term 2', 2024, 88.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (10, 5, 'Term 2', 2024, 85.0, 'B+');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (11, 6, 'Term 1', 2024, 65.0, 'C');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (11, 7, 'Term 1', 2024, 70.0, 'C+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (11, 8, 'Term 2', 2024, 73.0, 'B-');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (11, 9, 'Term 2', 2024, 76.0, 'B');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (12, 10, 'Term 1', 2024, 78.0, 'B');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (12, 11, 'Term 1', 2024, 81.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (12, 12, 'Term 2', 2024, 83.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (12, 1,  'Term 2', 2024, 85.0, 'B+');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (13, 2, 'Term 1', 2024, 93.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (13, 3, 'Term 1', 2024, 90.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (13, 4, 'Term 2', 2024, 88.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (13, 5, 'Term 2', 2024, 87.0, 'A');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (14, 6, 'Term 1', 2024, 88.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (14, 7, 'Term 1', 2024, 85.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (14, 8, 'Term 2', 2024, 82.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (14, 9, 'Term 2', 2024, 80.0, 'B');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (15, 10, 'Term 1', 2024, 80.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (15, 11, 'Term 1', 2024, 82.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (15, 12, 'Term 2', 2024, 79.0, 'B');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (15, 1,  'Term 2', 2024, 77.0, 'B-');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (16, 2, 'Term 1', 2024, 74.0, 'B');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (16, 3, 'Term 1', 2024, 70.0, 'C+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (16, 4, 'Term 2', 2024, 68.0, 'C');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (16, 5, 'Term 2', 2024, 65.0, 'C-');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (17, 6, 'Term 1', 2024, 85.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (17, 7, 'Term 1', 2024, 88.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (17, 8, 'Term 2', 2024, 90.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (17, 9, 'Term 2', 2024, 92.0, 'A');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (18, 10, 'Term 1', 2024, 75.0, 'B-');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (18, 11, 'Term 1', 2024, 78.0, 'B');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (18, 12, 'Term 2', 2024, 80.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (18, 1,  'Term 2', 2024, 82.0, 'B+');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (19, 2, 'Term 1', 2024, 79.0, 'B');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (19, 3, 'Term 1', 2024, 77.0, 'B-');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (19, 4, 'Term 2', 2024, 74.0, 'C+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (19, 5, 'Term 2', 2024, 70.0, 'C+');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (20, 6, 'Term 1', 2024, 85.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (20, 7, 'Term 1', 2024, 89.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (20, 8, 'Term 2', 2024, 90.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (20, 9, 'Term 2', 2024, 92.0, 'A');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (21, 10, 'Term 1', 2024, 65.0, 'C');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (21, 11, 'Term 1', 2024, 70.0, 'C+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (21, 12, 'Term 2', 2024, 72.0, 'B-');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (21, 1,  'Term 2', 2024, 75.0, 'B-');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (22, 2, 'Term 1', 2024, 80.0, 'B');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (22, 3, 'Term 1', 2024, 82.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (22, 4, 'Term 2', 2024, 85.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (22, 5, 'Term 2', 2024, 87.0, 'A');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (23, 6, 'Term 1', 2024, 90.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (23, 7, 'Term 1', 2024, 88.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (23, 8, 'Term 2', 2024, 85.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (23, 9, 'Term 2', 2024, 83.0, 'B+');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (24, 10, 'Term 1', 2024, 78.0, 'B');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (24, 11, 'Term 1', 2024, 75.0, 'B-');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (24, 12, 'Term 2', 2024, 72.0, 'B-');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (24, 1, 'Term 2', 2024, 70.0, 'C+');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (25, 2, 'Term 1', 2024, 83.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (25, 3, 'Term 1', 2024, 85.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (25, 4, 'Term 2', 2024, 88.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (25, 5, 'Term 2', 2024, 90.0, 'A');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (26, 6, 'Term 1', 2024, 70.0, 'C+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (26, 7, 'Term 1', 2024, 75.0, 'B-');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (26, 8, 'Term 2', 2024, 78.0, 'B');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (26, 9, 'Term 2', 2024, 80.0, 'B+');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (27, 10, 'Term 1', 2024, 88.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (27, 11, 'Term 1', 2024, 90.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (27, 12, 'Term 2', 2024, 92.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (27, 1, 'Term 2', 2024, 94.0, 'A');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (28, 2, 'Term 1', 2024, 65.0, 'C');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (28, 3, 'Term 1', 2024, 68.0, 'C+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (28, 4, 'Term 2', 2024, 70.0, 'C+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (28, 5, 'Term 2', 2024, 72.0, 'B-');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (29, 6, 'Term 1', 2024, 75.0, 'B-');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (29, 7, 'Term 1', 2024, 78.0, 'B');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (29, 8, 'Term 2', 2024, 80.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (29, 9, 'Term 2', 2024, 82.0, 'B+');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (30, 10, 'Term 1', 2024, 85.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (30, 11, 'Term 1', 2024, 87.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (30, 12, 'Term 2', 2024, 90.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (30, 1, 'Term 2', 2024, 92.0, 'A');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (31, 2, 'Term 1', 2024, 70.0, 'C+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (31, 3, 'Term 1', 2024, 72.0, 'B-');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (31, 4, 'Term 2', 2024, 75.0, 'B-');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (31, 5, 'Term 2', 2024, 77.0, 'B');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (32, 6, 'Term 1', 2024, 82.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (32, 7, 'Term 1', 2024, 84.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (32, 8, 'Term 2', 2024, 85.0, 'B+');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (32, 9, 'Term 2', 2024, 87.0, 'A');

INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (33, 10, 'Term 1', 2024, 89.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (33, 11, 'Term 1', 2024, 91.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (33, 12, 'Term 2', 2024, 93.0, 'A');
INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES (33, 1, 'Term 2', 2024, 95.0, 'A');





INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (1, 1, 'Term 1', 2024, 40);
INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (1, 2, 'Term 2', 2024, 35);
INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (2, 3, 'Term 1', 2024, 30);
INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (2, 4, 'Term 2', 2024, 25);

INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (3, 1, 'Term 1', 2024, 20);
INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (3, 5, 'Term 2', 2024, 40);

INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (4, 6, 'Term 1', 2024, 50);

INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (5, 7, 'Term 2', 2024, 45);

INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (6, 8, 'Term 1', 2024, 30);

INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (7, 9, 'Term 2', 2024, 20);

INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (8, 10, 'Term 1', 2024, 25);

INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (9, 11, 'Term 2', 2024, 35);

INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (10, 12, 'Term 1', 2024, 40);

INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (11, 1, 'Term 2', 2024, 30);
INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (11, 3, 'Term 1', 2024, 25);

INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (12, 4, 'Term 2', 2024, 20);
INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (12, 6, 'Term 1', 2024, 35);

INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (13, 7, 'Term 2', 2024, 40);
INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (13, 8, 'Term 1', 2024, 30);

INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (14, 9, 'Term 2', 2024, 25);
INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (14, 10, 'Term 1', 2024, 30);

INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (15, 11, 'Term 2', 2024, 35);
INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES (15, 12, 'Term 1', 2024, 40);



INSERT ALL
    INTO Principal (schoolId, firstName, lastName, startDate, endDate) VALUES (1, 'James', 'Lim', TO_DATE('2020-01-10', 'YYYY-MM-DD'), NULL)
    INTO Principal (schoolId, firstName, lastName, startDate, endDate) VALUES (2, 'Aisha', 'Yusof', TO_DATE('2019-03-15', 'YYYY-MM-DD'), TO_DATE('2022-12-31', 'YYYY-MM-DD'))
    INTO Principal (schoolId, firstName, lastName, startDate, endDate) VALUES (2, 'Siti', 'Zainal', TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL)
    INTO Principal (schoolId, firstName, lastName, startDate, endDate) VALUES (3, 'Marcus', 'Goh', TO_DATE('2021-08-01', 'YYYY-MM-DD'), NULL)
    INTO Principal (schoolId, firstName, lastName, startDate, endDate) VALUES (4, 'Daniel', 'Sim', TO_DATE('2023-06-20', 'YYYY-MM-DD'), NULL)
    INTO Principal (schoolId, firstName, lastName, startDate, endDate) VALUES (5, 'Serene', 'Ng', TO_DATE('2022-11-30', 'YYYY-MM-DD'), NULL)
SELECT * FROM dual;



