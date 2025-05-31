# 📚 School Management Database System Design Project

## 📌 Project Overview

This project models a relational **School Management Database System**. It is designed to capture relationships between schools, teachers, students, and subjects. The aim is to demonstrate core database design concepts such as:

- Entity-Relationship Modelling (ERD)
- Data dictionary creation
- SQL schema implementation
- Sample data population

## 🎯 Objectives

- Design a normalized relational database schema for a school management system.
- Create an Entity-Relationship Diagram (ERD) with clearly defined attributes, primary keys, and foreign keys.
- Develop a comprehensive data dictionary describing each entity and attribute.
- Implement the schema in SQL and populate each table with meaningful sample data.

## 🗂️ System Features

- Each **school** has many teachers and students.
- Each **teacher**:
  - Works for one school only.
  - Can teach multiple subjects.
- Each **student**:
  - Belongs to one school only.
  - Can study multiple subjects.
- Each **subject**:
  - Can be taught by multiple teachers.
  - Can be studied by multiple students.
- Each **school** is managed by one teacher, with the start date of their management recorded.

### Data Tracked:

- **School**: code, name, address (town, street, postcode), phone
- **Teacher**: tax file number, first name, last name, gender, qualifications, hours taught per subject
- **Student**: student number, first name, last name, gender, date of birth
- **Subject**: title, type
- **Management**: start date of management for the teacher managing the school

## 🖼️ Entity-Relationship Diagram (ERD)

![Copy of IDDD flowchart7 (1) (6) drawio (5)](https://github.com/user-attachments/assets/238159fc-66ee-4828-bd09-884b67fd132c)



This ERD illustrates the relationships among schools, teachers, students, and subjects as described above.

## 🛠️ Tools & Technologies

- **Database**: MySQL
- **Design Tools**: Draw.io 
- **Language**: SQL
- **Documentation**: Markdown

## 📁 Project Structure

```
school-database-design/
├── ERD/
│   └── school_erd.png
│
├── schema/
│   ├── create_tables.sql
│   └── insert_sample_data.sql
│
├── documentation/
│   ├── data_dictionary.md
│   └── project_overview.md
│
└── README.md
```

## 🧠 Learning Outcomes

- Apply relational modeling to real-world educational data
- Design normalized entity relationships with clear constraints
- Gain SQL experience through schema and data scripting
- Present documentation suitable for academic and professional purposes

## ✅ How to Use

1. Review the ERD diagram under the \`ERD/\` folder.
2. View or edit table definitions in \`schema/create_tables.sql\`.
3. Load sample data from \`schema/insert_sample_data.sql\`.
4. Reference \`documentation/data_dictionary.md\` for field-level details.
5. Connect the database to your preferred RDBMS to test queries and relationships.
