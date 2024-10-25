-- Imagine you're designing a database to manage a bookstore. 
-- Create a table named "Books" with attributes for book_id,
--  title, author, genre, published_year, isbn, price, rating, and stock_count.



CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    published_year INT,
    isbn VARCHAR(13) UNIQUE NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    rating DECIMAL(2, 1) CHECK (
        rating >= 0
        AND rating <= 5
    ),
    stock_count INT DEFAULT 0
);