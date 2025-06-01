# Data Dictionary for School Database Schema (SQLite)

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

| **Column Name** | **Data Type** | **Constraints**                | **Description**         |
|-----------------|---------------|--------------------------------|-------------------------|
| `schoolId`      | INTEGER       | PRIMARY KEY, AUTOINCREMENT     | Unique ID for each school |
| `name`          | TEXT          | NOT NULL                       | School name             |
| `town`          | TEXT          | NOT NULL                       | Town or city location   |
| `street`        | TEXT          | NOT NULL                       | Street address          |
| `postcode`      | TEXT          | NOT NULL                       | Postal code             |
| `phoneNumber`   | TEXT          | NOT NULL                       | Contact phone number    |

---

### 2. Table: `Subject`

| **Column Name**   | **Data Type** | **Constraints**            | **Description**              |
|-------------------|---------------|----------------------------|------------------------------|
| `subjectId`       | INTEGER       | PRIMARY KEY, AUTOINCREMENT | Unique ID for each subject   |
| `subjectTitle`    | TEXT          | NOT NULL                   | Name/title of the subject    |
| `subjectType`     | TEXT          | NOT NULL                   | Type/category (e.g., core)   |

---

### 3. Table: `Student`

| **Column Name** | **Data Type** | **Constraints**                                      | **Description**             |
|-----------------|---------------|------------------------------------------------------|-----------------------------|
| `studentId`     | INTEGER       | PRIMARY KEY, AUTOINCREMENT                           | Unique ID for each student  |
| `firstName`     | TEXT          | NOT NULL                                             | Student's first name        |
| `lastName`      | TEXT          | NOT NULL                                             | Student's last name         |
| `gender`        | TEXT          | NOT NULL, CHECK(length(gender) = 1)                  | Gender of the student ('M') |
| `dateOfBirth`   | DATE          | NOT NULL                                             | Date of birth               |
| `schoolId`      | INTEGER       | NOT NULL, FOREIGN KEY REFERENCES `School(schoolId)`  | Associated school ID        |

---

### 4. Table: `Teacher`

| **Column Name**     | **Data Type** | **Constraints**                                      | **Description**               |
|---------------------|---------------|------------------------------------------------------|-------------------------------|
| `teacherId`         | INTEGER       | PRIMARY KEY, AUTOINCREMENT                           | Unique ID for each teacher    |
| `firstName`         | TEXT          | NOT NULL                                             | Teacher's first name          |
| `lastName`          | TEXT          | NOT NULL                                             | Teacher's last name           |
| `gender`            | TEXT          | NOT NULL, CHECK(length(gender) = 1)                  | Gender of the teacher ('F')   |
| `qualifications`    | TEXT          | NOT NULL                                             | Teacher's qualifications      |
| `schoolId`          | INTEGER       | NOT NULL, FOREIGN KEY REFERENCES `School(schoolId)`  | Associated school ID          |

---

### 5. Table: `TeacherTeachingRecord`

| **Column Name** | **Data Type** | **Constraints**                                         | **Description**                            |
|-----------------|---------------|---------------------------------------------------------|--------------------------------------------|
| `recordId`      | INTEGER       | PRIMARY KEY, AUTOINCREMENT                              | Unique ID for each teaching record         |
| `teacherId`     | INTEGER       | NOT NULL, FOREIGN KEY REFERENCES `Teacher(teacherId)`   | Teacher who taught                         |
| `subjectId`     | INTEGER       | NOT NULL, FOREIGN KEY REFERENCES `Subject(subjectId)`   | Subject taught                             |
| `term`          | TEXT          | NOT NULL                                                | Term (e.g., 'Term 1', 'Midterm')           |
| `year`          | INTEGER       | NOT NULL                                                | Academic year                              |
| `hoursTaught`   | INTEGER       | NOT NULL                                                | Total hours taught in that term/year       |

---

### 6. Table: `SubjectResult`

| **Column Name** | **Data Type** | **Constraints**                                                | **Description**                                  |
|-----------------|---------------|----------------------------------------------------------------|--------------------------------------------------|
| `resultId`      | INTEGER       | PRIMARY KEY, AUTOINCREMENT                                     | Unique ID for each result record                |
| `studentId`     | INTEGER       | NOT NULL, FOREIGN KEY REFERENCES `Student(studentId)`          | Student who received the grade                  |
| `subjectId`     | INTEGER       | NOT NULL, FOREIGN KEY REFERENCES `Subject(subjectId)`          | Subject for the grade                           |
| `term`          | TEXT          | NOT NULL                                                       | Term of the academic year                       |
| `year`          | INTEGER       | NOT NULL                                                       | Academic year                                   |
| `marks`         | REAL          |                                                                | Marks obtained by the student                   |
| `grade`         | TEXT          |                                                                | Grade obtained                                  |
| (Unique Constraint) |           | `UNIQUE(subjectId, studentId, term, year)`                     | Prevents duplicate results for same record key  |

---

### 7. Table: `Principal`

| **Column Name** | **Data Type** | **Constraints**                                     | **Description**                       |
|-----------------|---------------|-----------------------------------------------------|---------------------------------------|
| `principalId`   | INTEGER       | PRIMARY KEY, AUTOINCREMENT                          | Unique ID for each principal          |
| `schoolId`      | INTEGER       | NOT NULL, FOREIGN KEY REFERENCES `School(schoolId)` | School associated with the principal |
| `firstName`     | TEXT          | NOT NULL                                            | Principal's first name                |
| `lastName`      | TEXT          | NOT NULL                                            | Principal's last name                 |
| `startDate`     | DATE          | NOT NULL                                            | Date when tenure started              |
| `endDate`       | DATE          | NULL                                                | Date when tenure ended (if applicable)|
