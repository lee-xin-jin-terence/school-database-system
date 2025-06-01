# 📚 School Management Database System

## 📌 Project Overview

This project models a relational **School Management Database System** that captures relationships between schools, teachers, students, subjects, and principals. The schema is designed to be portable and has been implemented in multiple SQL dialects, including:

- SQL Server 
- MySQL   
- Oracle  
- PostgreSQL  
- SQLite  

The system demonstrates core database design concepts such as entity-relationship modeling, data dictionary creation, SQL schema implementation, and sample data population.

## 🎯 Objectives

- Design a normalized relational database schema for a school management system.  
- Implement and maintain compatible schemas across five major SQL database systems.  
- Track teaching records per term and year, student subject results with marks and grades.  
- Manage school principals with their tenure periods.  
- Provide comprehensive documentation including a data dictionary, sample data, and example queries.  

## 🗂️ System Features

- Each **school** has many teachers and students.  
- Each **teacher**:  
  - Works for one school only.  
  - Can teach multiple subjects across different terms and years.  
- Each **student**:  
  - Belongs to one school only.  
  - Can study multiple subjects.  
- Each **subject**:  
  - Can be taught by multiple teachers.  
  - Can be studied by multiple students.  
- Principals manage schools for specific periods with start and optional end dates.  
- Detailed term- and year-based teaching hours and student results are recorded.  

## 📈 Database Modelling (Entity-Relationship Diagram)
![Copy of IDDD flowchart7 (1) (6) drawio (7)](https://github.com/user-attachments/assets/b273164e-08fa-4886-a789-9466b3def45c)


## 📁 Project Structure

```plaintext
school-database-system/
│
├── sql/
│   ├── sql_server/
│       ├── schema
│       ├── data
│       ├── queries
│       ├── data_dictionary.md
│ 
│   ├── oracle/
│       ├── (same subfolder structure as sql_server)
│ 
│   ├── postgresql/
│       ├── (same subfolder structure as sql_server)
│ 
│   ├── mysql/
│       ├── (same subfolder structure as sql_server)
│ 
│   └── sqlite/
│       ├── (same subfolder structure as sql_server)
│
└── README.md
