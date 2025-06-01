# Data Dictionary for School Database Schema (Oracle)

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

| **Column Name** | **Data Type**     | **Constraints**                    | **Description**           |
|-----------------|-------------------|------------------------------------|---------------------------|
| `schoolId`      | NUMBER            | PRIMARY KEY                      | Unique ID for each school   |
| `name`          | VARCHAR2(100)     | NOT NULL                        | School name               |
| `town`          | VARCHAR2(100)     | NOT NULL                        | Town or city location     |
| `street`        | VARCHAR2(100)     | NOT NULL                        | Street address            |
| `postcode`      | VARCHAR2(10)      | NOT NULL                        | Postal code               |
| `phoneNumber`   | VARCHAR2(20)      | NOT NULL                        | Contact phone number      |

---

### 2. Table: `Subject`

| **Column Name**   | **Data Type**     | **Constraints**                    | **Description**              |
|-------------------|-------------------|------------------------------------|------------------------------|
| `subjectId`       | NUMBER            | PRIMARY KEY                      | Unique ID for each subject   |
| `subjectTitle`    | VARCHAR2(100)     | NOT NULL                        | Name/title of the subject    |
| `subjectType`     | VARCHAR2(50)      | NOT NULL                        | Type/category (e.g., core)   |

---

### 3. Table: `Student`

| **Column Name** | **Data Type**     | **Constraints**                                      | **Description**             |
|-----------------|-------------------|------------------------------------------------------|-----------------------------|
| `studentId`     | NUMBER            | PRIMARY KEY                                         | Unique ID for each student  |
| `firstName`     | VARCHAR2(50)      | NOT NULL                                           | Student's first name        |
| `lastName`      | VARCHAR2(50)      | NOT NULL                                           | Student's last name         |
| `gender`        | CHAR(1)           | NOT NULL                                           | Gender of the student ('M') |
| `dateOfBirth`   | DATE              | NOT NULL                                           | Date of birth               |
| `schoolId`      | NUMBER            | NOT NULL, FOREIGN KEY REFERENCES `School(schoolId)` | Associated school ID        |

---

### 4. Table: `Teacher`

| **Column Name**     | **Data Type**     | **Constraints**                                      | **Description**               |
|---------------------|-------------------|------------------------------------------------------|-------------------------------|
| `teacherId`         | NUMBER            | PRIMARY KEY                                         | Unique ID for each teacher    |
| `firstName`         | VARCHAR2(50)      | NOT NULL                                           | Teacher's first name          |
| `lastName`          | VARCHAR2(50)      | NOT NULL                                           | Teacher's last name           |
| `gender`            | CHAR(1)           | NOT NULL                                           | Gender of the teacher ('F')   |
| `qualifications`    | VARCHAR2(100)     | NOT NULL                                           | Teacher's qualifications      |
| `schoolId`          | NUMBER            | NOT NULL, FOREIGN KEY REFERENCES `School(schoolId)` | Associated school ID          |

---

### 5. Table: `TeacherTeachingRecord`

| **Column Name** | **Data Type**     | **Constraints**                                         | **Description**                            |
|-----------------|-------------------|---------------------------------------------------------|--------------------------------------------|
| `recordId`      | NUMBER            | PRIMARY KEY                                         | Unique ID for each teaching record         |
| `teacherId`     | NUMBER            | NOT NULL, FOREIGN KEY REFERENCES `Teacher(teacherId)`   | Teacher who taught                         |
| `subjectId`     | NUMBER            | NOT NULL, FOREIGN KEY REFERENCES `Subject(subjectId)`   | Subject taught                             |
| `term`          | VARCHAR2(20)      | NOT NULL                                           | Term (e.g., 'Term 1', 'Midterm')           |
| `year`          | NUMBER            | NOT NULL                                           | Academic year                              |
| `hoursTaught`   | NUMBER            | NOT NULL                                           | Total hours taught in that term/year       |

---

### 6. Table: `SubjectResult`

| **Column Name** | **Data Type**     | **Constraints**                                                | **Description**                                  |
|-----------------|-------------------|----------------------------------------------------------------|--------------------------------------------------|
| `resultId`      | NUMBER            | PRIMARY KEY                                                 | Unique ID for each result record                |
| `studentId`     | NUMBER            | NOT NULL, FOREIGN KEY REFERENCES `Student(studentId)`          | Student who received the grade                  |
| `subjectId`     | NUMBER            | NOT NULL, FOREIGN KEY REFERENCES `Subject(subjectId)`          | Subject for the grade                           |
| `term`          | VARCHAR2(20)      | NOT NULL                                                   | Term of the academic year                       |
| `year`          | NUMBER            | NOT NULL                                                   | Academic year                                   |
| `marks`         | NUMBER(5,2)       |                                                            | Marks obtained by the student                   |
| `grade`         | VARCHAR2(5)       |                                                            | Grade obtained                                  |
| (Unique Constraint) |               | `UNIQUE(subjectId, studentId, term, year)`                   | Prevents duplicate results for same record key  |

---

### 7. Table: `Principal`

| **Column Name** | **Data Type**     | **Constraints**                                     | **Description**                       |
|-----------------|-------------------|-----------------------------------------------------|---------------------------------------|
| `principalId`   | NUMBER            | PRIMARY KEY                                         | Unique ID for each principal          |
| `schoolId`      | NUMBER            | NOT NULL, FOREIGN KEY REFERENCES `School(schoolId)` | School associated with the principal |
| `firstName`     | VARCHAR2(50)      | NOT NULL                                           | Principal's first name                |
| `lastName`      | VARCHAR2(50)      | NOT NULL                                           | Principal's last name                 |
| `startDate`     | DATE              | NOT NULL                                           | Date when tenure started              |
| `endDate`       | DATE              | NULL                                               | Date when tenure ended (if applicable)|
