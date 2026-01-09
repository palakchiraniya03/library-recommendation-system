-- for a new user or to simply recommend what is trending rn
SELECT 
    b.title,
    COUNT(bh.book_id) AS borrow_count
FROM borrow_history bh
JOIN books b ON bh.book_id = b.book_id
GROUP BY b.book_id, b.title
ORDER BY borrow_count DESC;

SELECT 
    b.title,
    AVG(r.rating) AS avg_rating
FROM ratings r
JOIN books b ON r.book_id = b.book_id
GROUP BY b.book_id, b.title
ORDER BY avg_rating DESC;
