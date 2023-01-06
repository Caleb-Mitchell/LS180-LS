SELECT
    books.id,
    books.author,
    STRING_AGG(categories.name, ', ') AS categories
FROM
    books
INNER JOIN
    books_categories ON books.id = books_categories.book_id
INNER JOIN
    categories ON categories.id = books_categories.category_id
GROUP BY books.id ORDER BY books.id;
