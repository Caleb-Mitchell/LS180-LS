ALTER TABLE books_categories ADD CONSTRAINT unique_book_id_category_id UNIQUE (book_id, category_id);

-- LS

ALTER TABLE books_categories ADD UNIQUE (book_id, category_id);
