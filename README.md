# internship-task_1
SQL Developer Internship - Task 1
                                                                                       
                                Database Setup and Schema Design                                                                                      

 Objective

The objective of this task was to learn how to create a database schema, define relationships between tables, and generate an ER Diagram using MySQL Workbench.

Domain Chosen

**Library Management System**

Tools Used

* MySQL Workbench
* GitHub

Database Design

The database consists of the following tables:

 1. Authors

Stores information about book authors.

* author_id (Primary Key)
* author_name

 2. Books

Stores information about books available in the library.

* book_id (Primary Key)
* title
* isbn
* publication_year
* author_id (Foreign Key)

 3. Members

Stores information about library members.

* member_id (Primary Key)
* member_name
* email

 4. Borrowings

Stores borrowing records of books by members.

* borrow_id (Primary Key)
* member_id (Foreign Key)
* book_id (Foreign Key)
* borrow_date
* return_date

 Relationships

* One Author can write many Books.
* One Book belongs to one Author.
* One Member can borrow many Books.
* One Book can be borrowed multiple times.

 Key Concepts Implemented

* Database Schema Design
* DDL (Data Definition Language)
* Primary Keys
* Foreign Keys
* One-to-Many Relationships
* ER Diagram Creation
* Normalized Table Structure

 Deliverables

* library_schema.sql
* library_ERD.png
* README.md

 Outcome

A well-structured Library Management System database schema was created with proper primary keys, foreign keys, and entity relationships. An ER Diagram was generated to visually represent the database structure.
