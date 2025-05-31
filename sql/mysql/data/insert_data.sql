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
