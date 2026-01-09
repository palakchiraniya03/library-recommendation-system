USE library_recommendation;

INSERT INTO users (name, email) VALUES
('Alice', 'alice@gmail.com'),
('Bob', 'bob@gmail.com'),
('Charlie', 'charlie@gmail.com'),
('Diana', 'diana@gmail.com');

INSERT INTO books (title, author, published_year) VALUES
('Harry Potter', 'J.K. Rowling', 1997),
('The Hobbit', 'J.R.R. Tolkien', 1937),
('1984', 'George Orwell', 1949),
('To Kill a Mockingbird', 'Harper Lee', 1960),
('The Alchemist', 'Paulo Coelho', 1988),
('Percy Jackson', 'Rick Riordan', 2005),
('The Great Gatsby', 'F. Scott Fitzgerald', 1925);

INSERT INTO genres (genre_name) VALUES
('Fantasy'),
('Adventure'),
('Dystopian'),
('Classic'),
('Philosophical');

INSERT INTO book_genres (book_id, genre_id) VALUES
(1, 1), -- Harry Potter → Fantasy
(1, 2), -- Harry Potter → Adventure
(2, 1), -- The Hobbit → Fantasy
(2, 2), -- The Hobbit → Adventure
(3, 3), -- 1984 → Dystopian
(4, 4), -- To Kill a Mockingbird → Classic
(5, 5), -- The Alchemist → Philosophical
(6, 1), -- Percy Jackson → Fantasy
(6, 2), -- Percy Jackson → Adventure
(7, 4); -- The Great Gatsby → Classic

INSERT INTO borrow_history (user_id, book_id, borrow_date) VALUES
(1, 1, '2024-01-10'),
(1, 2, '2024-01-15'),
(1, 6, '2024-02-01'),
(2, 3, '2024-01-12'),
(2, 4, '2024-02-05'),
(3, 1, '2024-01-20'),
(3, 5, '2024-02-10'),
(4, 2, '2024-01-18'),
(4, 7, '2024-02-08');

INSERT INTO ratings (user_id, book_id, rating) VALUES
(1, 1, 5),
(1, 2, 4),
(1, 6, 5),
(2, 3, 5),
(2, 4, 4),
(3, 1, 4),
(3, 5, 5),
(4, 2, 5),
(4, 7, 4);
