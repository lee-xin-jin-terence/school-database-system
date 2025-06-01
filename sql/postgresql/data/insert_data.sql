

INSERT INTO School (name, town, street, postcode, phoneNumber) VALUES
('Greenfield Secondary School', 'Bedok', '123 East Avenue', '460123', '6123-4567'),
('North Ridge High School', 'Woodlands', '456 North Road', '738456', '6892-1134'),
('Sunshine Primary School', 'Tampines', '789 Sunshine Blvd', '529789', '6345-9988'),
('Westlake International School', 'Bukit Batok', '321 Hillview Drive', '659321', '6899-7744'),
('Meridian Secondary School', 'Pasir Ris', '987 Meridian Walk', '519987', '6587-2233');



INSERT INTO Subject (subjectTitle, subjectType) VALUES
('Mathematics', 'Core'),
('English Language', 'Core'),
('Science', 'Core'),
('History', 'Elective'),
('Geography', 'Elective'),
('Malay Language', 'Language'),
('Chinese Language', 'Language'),
('Tamil Language', 'Language'),
('Art', 'Elective'),
('Physical Education', 'Core'),
('Computer Science', 'Elective'),
('Music', 'Elective');


INSERT INTO Student (firstName, lastName, gender, dateOfBirth, schoolId) VALUES
('Farah', 'Ahmad', 'F', '2008-04-15', 1),
('Wei', 'Chen', 'M', '2007-11-20', 2),
('Arjun', 'Kumar', 'M', '2008-07-05', 3),
('Nurul', 'Hassan', 'F', '2007-09-18', 4),
('Liang', 'Tan', 'F', '2008-01-25', 5),
('Ravi', 'Singh', 'M', '2007-12-03', 1),
('Aina', 'Rahman', 'F', '2008-03-10', 2),
('Jian', 'Lim', 'M', '2008-06-28', 3),
('Siti', 'Zahra', 'F', '2007-05-14', 4),
('Manpreet', 'Kaur', 'F', '2008-08-19', 5),
('Dinesh', 'Nair', 'M', '2007-04-23', 1),
('Melati', 'Ismail', 'F', '2008-02-12', 2),
('Wei Ling', 'Chong', 'F', '2007-10-30', 3),
('Arvind', 'Reddy', 'M', '2008-09-02', 4),
('Norah', 'Abdullah', 'F', '2007-07-22', 5),
('Kiran', 'Sharma', 'M', '2008-11-11', 1),
('Hafiz', 'Mohamed', 'M', '2007-03-07', 2),
('Li Mei', 'Wong', 'F', '2008-05-16', 3),
('Surya', 'Nambiar', 'M', '2007-08-25', 4),
('Siti Nur', 'Rahim', 'F', '2008-12-04', 5),
('Raj', 'Patel', 'M', '2007-06-13', 1),
('Faridah', 'Hussain', 'F', '2008-09-27', 2),
('Xiao', 'Liu', 'M', '2007-02-19', 3),
('Deepa', 'Menon', 'F', '2008-07-29', 4),
('Ismail', 'Mohd', 'M', '2007-11-06', 5),
('Ayesha', 'Khan', 'F', '2008-01-04', 1),
('Wei Jie', 'Tan', 'M', '2007-05-28', 2),
('Shanthi', 'Raj', 'F', '2008-03-21', 3),
('Ahmad', 'Yusuf', 'M', '2007-09-12', 4),
('Mei Ling', 'Ho', 'F', '2008-06-07', 5),
('Arun', 'Kumar', 'M', '2007-10-17', 1),
('Hani', 'Zainal', 'F', '2008-04-02', 2),
('Kumar', 'Rajan', 'M', '2007-08-01', 3);






INSERT INTO Teacher (firstName, lastName, gender, qualifications, schoolId) VALUES
('James', 'Lim', 'M', 'B.Ed, M.Ed', 1),
('Aisha', 'Yusof', 'F', 'B.Sc, PGDE', 2),
('Rajesh', 'Nair', 'M', 'M.Sc, B.Ed', 3),
('Chloe', 'Tan', 'F', 'B.A., PGDE', 1),
('Imran', 'Abdullah', 'M', 'B.Ed', 2),
('Siti', 'Zainal', 'F', 'B.A., M.Ed', 3),
('Marcus', 'Goh', 'M', 'B.Sc', 4),
('Anita', 'Menon', 'F', 'M.A., PGDE', 5),
('Vinod', 'Das', 'M', 'PhD, B.Ed', 5),
('Wei Ling', 'Ong', 'F', 'B.Ed', 1),
('Daniel', 'Sim', 'M', 'M.Sc', 4),
('Meena', 'Ravi', 'F', 'B.Ed, M.Ed', 2),
('Hakim', 'Rahmat', 'M', 'B.Sc, PGDE', 3),
('Serene', 'Ng', 'F', 'B.Ed', 5),
('Arjun', 'Reddy', 'M', 'B.Tech, M.Ed', 4);










INSERT INTO SubjectResult (studentId, subjectId, term, year, marks, grade) VALUES
-- Student 1
(1, 1, 'Term 1', 2024, 88.5, 'A'),
(1, 2, 'Term 1', 2024, 92.0, 'A'),
(1, 3, 'Term 2', 2024, 85.0, 'B+'),
(1, 4, 'Term 2', 2024, 78.0, 'B'),

-- Student 2
(2, 1, 'Term 1', 2024, 75.0, 'B'),
(2, 5, 'Term 1', 2024, 80.0, 'B+'),
(2, 6, 'Term 2', 2024, 70.0, 'C+'),
(2, 7, 'Term 2', 2024, 88.0, 'A'),

-- Student 3
(3, 3, 'Term 1', 2024, 82.0, 'B+'),
(3, 8, 'Term 1', 2024, 90.0, 'A'),
(3, 9, 'Term 2', 2024, 76.0, 'B'),
(3, 10, 'Term 2', 2024, 85.0, 'B+'),

-- Student 4
(4, 1, 'Term 1', 2024, 90.0, 'A'),
(4, 2, 'Term 1', 2024, 88.0, 'A'),
(4, 3, 'Term 2', 2024, 85.0, 'B+'),
(4, 5, 'Term 2', 2024, 70.0, 'C+'),

-- Student 5
(5, 6, 'Term 1', 2024, 68.5, 'C+'),
(5, 7, 'Term 1', 2024, 74.0, 'B'),
(5, 8, 'Term 2', 2024, 80.0, 'B+'),
(5, 9, 'Term 2', 2024, 82.0, 'B+'),

-- Student 6
(6, 10, 'Term 1', 2024, 79.0, 'B'),
(6, 11, 'Term 1', 2024, 83.0, 'B+'),
(6, 12, 'Term 2', 2024, 88.0, 'A'),
(6, 1, 'Term 2', 2024, 90.0, 'A'),

-- Student 7
(7, 2, 'Midterm', 2023, 85.0, 'B+'),
(7, 3, 'Midterm', 2023, 80.0, 'B'),
(7, 4, 'Final', 2023, 75.0, 'B-'),
(7, 5, 'Final', 2023, 78.0, 'B'),

-- Student 8
(8, 6, 'Midterm', 2023, 91.0, 'A'),
(8, 7, 'Midterm', 2023, 87.0, 'A'),
(8, 8, 'Final', 2023, 83.0, 'B+'),
(8, 9, 'Final', 2023, 85.0, 'B+'),

-- Student 9
(9, 10, 'Term 1', 2024, 72.0, 'B-'),
(9, 11, 'Term 1', 2024, 74.0, 'C+'),
(9, 12, 'Term 2', 2024, 77.0, 'B-'),
(9, 1, 'Term 2', 2024, 80.0, 'B'),

-- Student 10
(10, 2, 'Term 1', 2024, 89.5, 'A'),
(10, 3, 'Term 1', 2024, 90.0, 'A'),
(10, 4, 'Term 2', 2024, 88.0, 'A'),
(10, 5, 'Term 2', 2024, 85.0, 'B+'),

-- Student 11
(11, 6, 'Term 1', 2024, 65.0, 'C'),
(11, 7, 'Term 1', 2024, 70.0, 'C+'),
(11, 8, 'Term 2', 2024, 73.0, 'B-'),
(11, 9, 'Term 2', 2024, 76.0, 'B'),

-- Student 12
(12, 10, 'Term 1', 2024, 78.0, 'B'),
(12, 11, 'Term 1', 2024, 81.0, 'B+'),
(12, 12, 'Term 2', 2024, 83.0, 'B+'),
(12, 1, 'Term 2', 2024, 85.0, 'B+'),

-- Student 13
(13, 2, 'Term 1', 2024, 93.0, 'A'),
(13, 3, 'Term 1', 2024, 90.0, 'A'),
(13, 4, 'Term 2', 2024, 88.0, 'A'),
(13, 5, 'Term 2', 2024, 87.0, 'A'),

-- Student 14
(14, 6, 'Term 1', 2024, 88.0, 'A'),
(14, 7, 'Term 1', 2024, 85.0, 'B+'),
(14, 8, 'Term 2', 2024, 82.0, 'B+'),
(14, 9, 'Term 2', 2024, 80.0, 'B'),

-- Student 15
(15, 10, 'Term 1', 2024, 80.0, 'B+'),
(15, 11, 'Term 1', 2024, 82.0, 'B+'),
(15, 12, 'Term 2', 2024, 79.0, 'B'),
(15, 1, 'Term 2', 2024, 77.0, 'B-'),

-- Student 16
(16, 2, 'Term 1', 2024, 74.0, 'B'),
(16, 3, 'Term 1', 2024, 70.0, 'C+'),
(16, 4, 'Term 2', 2024, 68.0, 'C'),
(16, 5, 'Term 2', 2024, 65.0, 'C-'),

-- Student 17
(17, 6, 'Term 1', 2024, 85.0, 'B+'),
(17, 7, 'Term 1', 2024, 88.0, 'A'),
(17, 8, 'Term 2', 2024, 90.0, 'A'),
(17, 9, 'Term 2', 2024, 92.0, 'A'),

-- Student 18
(18, 10, 'Term 1', 2024, 75.0, 'B-'),
(18, 11, 'Term 1', 2024, 78.0, 'B'),
(18, 12, 'Term 2', 2024, 80.0, 'B+'),
(18, 1, 'Term 2', 2024, 82.0, 'B+'),

-- Student 19
(19, 2, 'Term 1', 2024, 79.0, 'B'),
(19, 3, 'Term 1', 2024, 77.0, 'B-'),
(19, 4, 'Term 2', 2024, 74.0, 'C+'),
(19, 5, 'Term 2', 2024, 70.0, 'C+'),

-- Student 20
(20, 6, 'Term 1', 2024, 85.0, 'B+'),
(20, 7, 'Term 1', 2024, 89.0, 'A'),
(20, 8, 'Term 2', 2024, 90.0, 'A'),
(20, 9, 'Term 2', 2024, 92.0, 'A'),

-- Student 21
(21, 10, 'Term 1', 2024, 65.0, 'C'),
(21, 11, 'Term 1', 2024, 70.0, 'C+'),
(21, 12, 'Term 2', 2024, 72.0, 'B-'),
(21, 1, 'Term 2', 2024, 75.0, 'B-'),

-- Student 22
(22, 2, 'Term 1', 2024, 80.0, 'B'),
(22, 3, 'Term 1', 2024, 82.0, 'B+'),
(22, 4, 'Term 2', 2024, 85.0, 'B+'),
(22, 5, 'Term 2', 2024, 87.0, 'A'),

-- Student 23
(23, 6, 'Term 1', 2024, 90.0, 'A'),
(23, 7, 'Term 1', 2024, 88.0, 'A'),
(23, 8, 'Term 2', 2024, 85.0, 'B+'),
(23, 9, 'Term 2', 2024, 83.0, 'B+'),

-- Student 24
(24, 10, 'Term 1', 2024, 78.0, 'B'),
(24, 11, 'Term 1', 2024, 75.0, 'B-'),
(24, 12, 'Term 2', 2024, 72.0, 'B-'),
(24, 1, 'Term 2', 2024, 70.0, 'C+'),

-- Student 25
(25, 2, 'Term 1', 2024, 83.0, 'B+'),
(25, 3, 'Term 1', 2024, 85.0, 'B+'),
(25, 4, 'Term 2', 2024, 88.0, 'A'),
(25, 5, 'Term 2', 2024, 90.0, 'A'),

-- Student 26
(26, 6, 'Term 1', 2024, 70.0, 'C+'),
(26, 7, 'Term 1', 2024, 75.0, 'B-'),
(26, 8, 'Term 2', 2024, 78.0, 'B'),
(26, 9, 'Term 2', 2024, 80.0, 'B+'),

-- Student 27
(27, 10, 'Term 1', 2024, 88.0, 'A'),
(27, 11, 'Term 1', 2024, 90.0, 'A'),
(27, 12, 'Term 2', 2024, 92.0, 'A'),
(27, 1, 'Term 2', 2024, 94.0, 'A'),

-- Student 28
(28, 2, 'Term 1', 2024, 65.0, 'C'),
(28, 3, 'Term 1', 2024, 68.0, 'C+'),
(28, 4, 'Term 2', 2024, 70.0, 'C+'),
(28, 5, 'Term 2', 2024, 72.0, 'B-'),

-- Student 29
(29, 6, 'Term 1', 2024, 75.0, 'B-'),
(29, 7, 'Term 1', 2024, 78.0, 'B'),
(29, 8, 'Term 2', 2024, 80.0, 'B+'),
(29, 9, 'Term 2', 2024, 82.0, 'B+'),

-- Student 30
(30, 10, 'Term 1', 2024, 85.0, 'B+'),
(30, 11, 'Term 1', 2024, 87.0, 'A'),
(30, 12, 'Term 2', 2024, 90.0, 'A'),
(30, 1, 'Term 2', 2024, 92.0, 'A'),

-- Student 31
(31, 2, 'Term 1', 2024, 70.0, 'C+'),
(31, 3, 'Term 1', 2024, 72.0, 'B-'),
(31, 4, 'Term 2', 2024, 75.0, 'B-'),
(31, 5, 'Term 2', 2024, 77.0, 'B'),

-- Student 32
(32, 6, 'Term 1', 2024, 82.0, 'B+'),
(32, 7, 'Term 1', 2024, 84.0, 'B+'),
(32, 8, 'Term 2', 2024, 85.0, 'B+'),
(32, 9, 'Term 2', 2024, 87.0, 'A'),

-- Student 33
(33, 10, 'Term 1', 2024, 89.0, 'A'),
(33, 11, 'Term 1', 2024, 91.0, 'A'),
(33, 12, 'Term 2', 2024, 93.0, 'A'),
(33, 1, 'Term 2', 2024, 95.0, 'A');


INSERT INTO TeacherTeachingRecord (teacherId, subjectId, term, year, hoursTaught) VALUES
-- Teacher 1
(1, 1, 'Term 1', 2024, 40),
(1, 2, 'Term 2', 2024, 35),

-- Teacher 2
(2, 3, 'Term 1', 2024, 30),
(2, 4, 'Term 2', 2024, 25),

-- Teacher 3
(3, 1, 'Term 1', 2024, 20),
(3, 5, 'Term 2', 2024, 40),

-- Teacher 4
(4, 6, 'Term 1', 2024, 50),

-- Teacher 5
(5, 7, 'Term 2', 2024, 45),

-- Teacher 6
(6, 8, 'Term 1', 2024, 30),

-- Teacher 7
(7, 9, 'Term 2', 2024, 20),

-- Teacher 8
(8, 10, 'Term 1', 2024, 25),

-- Teacher 9
(9, 11, 'Term 2', 2024, 35),

-- Teacher 10
(10, 12, 'Term 1', 2024, 40),

-- Teacher 11
(11, 1, 'Term 2', 2024, 30),
(11, 3, 'Term 1', 2024, 25),

-- Teacher 12
(12, 4, 'Term 2', 2024, 20),
(12, 6, 'Term 1', 2024, 35),

-- Teacher 13
(13, 7, 'Term 2', 2024, 40),
(13, 8, 'Term 1', 2024, 30),

-- Teacher 14
(14, 9, 'Term 2', 2024, 25),
(14, 10, 'Term 1', 2024, 30),

-- Teacher 15
(15, 11, 'Term 2', 2024, 35),
(15, 12, 'Term 1', 2024, 40);


INSERT INTO Principal (schoolId, firstName, lastName, startDate, endDate) VALUES
(1, 'James', 'Lim', '2020-01-10', NULL),           
(2, 'Aisha', 'Yusof', '2019-03-15', '2022-12-31'),  
(2, 'Siti', 'Zainal', '2023-01-01', NULL),           
(3, 'Marcus', 'Goh', '2021-08-01', NULL),
(4, 'Daniel', 'Sim', '2023-06-20', NULL),
(5, 'Serene', 'Ng', '2022-11-30', NULL);




