
CREATE DATABASE library_db;

-- Create books table
CREATE TABLE books (
  book_id INT IDENTITY(1,1) PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(100) NOT NULL,
  genre VARCHAR(50) NOT NULL
);

-- Create borrowers table
CREATE TABLE borrowers (
  borrower_id INT IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL
);

-- Create lending_records table
CREATE TABLE lending_records (
  record_id INT IDENTITY(1,1) PRIMARY KEY,
  book_id INT NOT NULL,
  borrower_id INT NOT NULL,
  borrow_date DATE NOT NULL,
  return_date DATE NOT NULL,
  FOREIGN KEY (book_id) REFERENCES books(book_id),
  FOREIGN KEY (borrower_id) REFERENCES borrowers(borrower_id)
);

USE library_db; -- Assuming 'library_db' is the name of your database containing the 'books' table

INSERT INTO books (title, author, genre) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic'),
('To Kill a Mockingbird', 'Harper Lee', 'Classic'),
('1984', 'George Orwell', 'Dystopian'),
('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy'),
('Pride and Prejudice', 'Jane Austen', 'Romance');

INSERT INTO borrowers (name, email) VALUES
('John Doe', 'john@example.com'),
('Jane Smith', 'jane@example.com'),
('Michael Johnson', 'michael@example.com'),
('Emily Brown', 'emily@example.com'),
('David Lee', 'david@example.com');

INSERT INTO lending_records (book_id, borrower_id, borrow_date, return_date) VALUES
(1, 1, '2023-07-01', '2023-07-15'),
(3, 2, '2023-07-10', '2023-07-25'),
(5, 3, '2023-07-05', '2023-07-20'),
(2, 4, '2023-07-15', '2023-07-30'),
(4, 5, '2023-07-20', '2023-08-04');

USE library_db; -- Assuming 'library_db' is the name of your database containing the tables

-- View data in the 'books' table
SELECT * FROM books;
SELECT * FROM borrowers;
SELECT title, author FROM books;

