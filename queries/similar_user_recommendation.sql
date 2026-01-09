SELECT DISTINCT bh2.user_id
FROM borrow_history bh1
JOIN borrow_history bh2 ON bh1.book_id = bh2.book_id
WHERE bh1.user_id = 1
  AND bh2.user_id != 1;

SELECT DISTINCT b.title
FROM borrow_history bh
JOIN books b ON bh.book_id = b.book_id
WHERE bh.user_id IN (
    SELECT DISTINCT bh2.user_id
    FROM borrow_history bh1
    JOIN borrow_history bh2 ON bh1.book_id = bh2.book_id
    WHERE bh1.user_id = 1
      AND bh2.user_id != 1
)
AND b.book_id NOT IN (
    SELECT book_id
    FROM borrow_history
    WHERE user_id = 1
);
