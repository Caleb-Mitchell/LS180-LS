SELECT
    categories.name,
    COUNT(books.id) AS book_count,
    STRING_AGG(books.title, ', ') AS book_titles
FROM
    categories
INNER JOIN
    books_categories ON categories.id = books_categories.category_id
INNER JOIN
    books ON books_categories.book_id = books.id
GROUP BY categories.name ORDER BY categories.name ASC;
