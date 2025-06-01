# Data Dictionary for School Database Schema (MySQL)

| **Table Name**             | **Description**                                                   |
|---------------------------|-------------------------------------------------------------------|
| `School`                  | Stores information about schools.                                 |
| `Subject`                 | Stores information about subjects taught in schools.              |
| `Student`                 | Stores student personal details and their associated school.      |
| `Teacher`                 | Stores teacher personal details, qualifications, and school.      |
| `TeacherTeachingRecord`   | Records teaching hours per teacher, subject, term, and year.      |
| `SubjectResult`           | Stores students' marks and grades per subject, term, and year.    |
| `Principal`               | Stores details of school principals and their tenure dates.       |

---

### 1. Table: `School`

| **Column Name** | **Data Type**   | **Constraints**            | **Description**             |
|-----------------|-----------------|----------------------------|-----------------------------|
| `schoolId`      | INT             | AUTO_INCREMENT, PRIMARY KEY | Unique ID for each school    |
| `name`          | VARCHAR(100)    | NOT NULL                   | School name                 |
| `town`          | VARCHAR(100)    | NOT NULL                   | Town or city location       |
| `street`        | VARCHAR(100)    | NOT NULL                   | Street address              |
| `postcode`      | VARCHAR(10)     | NOT NULL                   | Postal code                 |
| `phoneNumber`   | VARCHAR(20)     | NOT NULL                   | Contact phone number        |

---

### 2. Table: `Subject`

| **Column Name** | **Data Type**   | **Constraints**            | **Description**             |
|-----------------|-----------------|----------------------------|-----------------------------|
| `subjectId`     | INT             | AUTO_INCREMENT, PRIMARY KEY | Unique ID for each subject   |
| `subjectTitle`  | VARCHAR(100)    | NOT NULL                   | Name/title of the subject    |
| `subjectType`   | VARCHAR(50)     | NOT NULL                   | Type/category (e.g., core)   |

---

### 3. Table: `Student`

| **Column Name** | **Data Type**   | **Constraints**                                 | **Description**             |
|-----------------|-----------------|-------------------------------------------------|-----------------------------|
| `studentId`     | INT             | AUTO_INCREMENT, PRIMARY KEY                     | Unique ID for each student  |
| `firstName`     | VARCHAR(50)     | NOT NULL                                       | Student's first name        |
| `lastName`      | VARCHAR(50)     | NOT NULL                                       | Student's last name         |
| `gender`        | CHAR(1)         | NOT NULL                                       | Gender of the student ('M' or 'F') |
| `dateOfBirth`   | DATE            | NOT NULL                                       | Date of birth               |
| `schoolId`      | INT             | NOT NULL, FOREIGN KEY REFERENCES `School(schoolId)` | Associated school ID        |

---

### 4. Table: `Teacher`

| **Column Name** | **Data Type**   | **Constraints**                                 | **Description**             |
|-----------------|-----------------|-------------------------------------------------|-----------------------------|
| `teacherId`     | INT             | AUTO_INCREMENT, PRIMARY KEY                     | Unique ID for each teacher  |
| `firstName`     | VARCHAR(50)     | NOT NULL                                       | Teacher's first name        |
| `lastName`      | VARCHAR(50)     | NOT NULL                                       | Teacher's last name         |
| `gender`        | CHAR(1)         | NOT NULL                                       | Gender of the teacher       |
| `qualifications`| VARCHAR(100)    | NOT NULL                                       | Teacher's qualifications    |
| `schoolId`      | INT             | NOT NULL, FOREIGN KEY REFERENCES `School(schoolId)` | Associated school ID        |

---

### 5. Table: `TeacherTeachingRecord`

| **Column Name** | **Data Type**   | **Constraints**                                          | **Description**                       |
|-----------------|-----------------|----------------------------------------------------------|-------------------------------------|
| `recordId`      | INT             | AUTO_INCREMENT, PRIMARY KEY                              | Unique ID for each teaching record  |
| `teacherId`     | INT             | NOT NULL, FOREIGN KEY REFERENCES `Teacher(teacherId)`   | Teacher who taught                  |
| `subjectId`     | INT             | NOT NULL, FOREIGN KEY REFERENCES `Subject(subjectId)`   | Subject taught                     |
| `term`          | VARCHAR(20)     | NOT NULL                                               | Term (e.g., 'Term 1', 'Midterm')   |
| `year`          | INT             | NOT NULL                                               | Academic year                      |
| `hoursTaught`   | INT             | NOT NULL                                               | Total hours taught in that term/year |

---

### 6. Table: `SubjectResult`

| **Column Name** | **Data Type**     | **Constraints**                                                | **Description**                          |
|-----------------|-------------------|----------------------------------------------------------------|------------------------------------------|
| `resultId`      | INT               | AUTO_INCREMENT, PRIMARY KEY                                  | Unique ID for each result record         |
| `studentId`     | INT               | NOT NULL, FOREIGN KEY REFERENCES `Student(studentId)`          | Student who received the grade           |
| `subjectId`     | INT               | NOT NULL, FOREIGN KEY REFERENCES `Subject(subjectId)`          | Subject for the grade                    |
| `term`          | VARCHAR(20)       | NOT NULL                                                   | Term of the academic year                 |
| `year`          | INT               | NOT NULL                                                   | Academic year                             |
| `marks`         | DECIMAL(5,2)      | NULL                                                      | Marks obtained by the student             |
| `grade`         | VARCHAR(5)        | NULL                                                      | Grade obtained                            |
| (Unique Key)    |                   | UNIQUE KEY `UQ_SubjectResult_Composite` (subjectId, studentId, term, year) | Prevents duplicate results for same record |

---

### 7. Table: `Principal`

| **Column Name** | **Data Type**   | **Constraints**                                 | **Description**                        |
|-----------------|-----------------|-------------------------------------------------|--------------------------------------|
| `principalId`   | INT             | AUTO_INCREMENT, PRIMARY KEY                     | Unique ID for each principal          |
| `schoolId`      | INT             | NOT NULL, FOREIGN KEY REFERENCES `School(schoolId)` | School associated with the principal |
| `firstName`     | VARCHAR(50)     | NOT NULL                                       | Principal's first name                |
| `lastName`      | VARCHAR(50)     | NOT NULL                                       | Principal's last name                 |
| `startDate`     | DATE            | NOT NULL                                       | Date when tenure started              |
| `endDate`       | DATE            | NULL                                           | Date when tenure ended (if applicable)|
