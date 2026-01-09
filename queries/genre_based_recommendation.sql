SELECT 
    g.genre_name,
    COUNT(*) AS times_read
FROM borrow_history bh
JOIN book_genres bg ON bh.book_id = bg.book_id
JOIN genres g ON bg.genre_id = g.genre_id
WHERE bh.user_id = 1
GROUP BY g.genre_name
ORDER BY times_read DESC;

-- recommendation part
SELECT DISTINCT b.title, g.genre_name
FROM books b
JOIN book_genres bg ON b.book_id = bg.book_id
JOIN genres g ON bg.genre_id = g.genre_id
WHERE g.genre_name IN (
    SELECT g.genre_name
    FROM borrow_history bh
    JOIN book_genres bg ON bh.book_id = bg.book_id
    JOIN genres g ON bg.genre_id = g.genre_id
    WHERE bh.user_id = 1
)
AND b.book_id NOT IN (
    SELECT book_id
    FROM borrow_history
    WHERE user_id = 1
);