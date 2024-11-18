-- Додавання даних у таблицю authors
insert into authors (author_name)
values ('George Orwell'),
       ('J.K. Rowling');

-- Додавання даних у таблицю genres
insert into genres (genre_name)
values ('Dystopian'),
       ('Fantasy');

-- Додавання даних у таблицю books
insert into books (title, publication_year, author_id, genre_id)
values ('1984', 1949, 1, 1),
       ('Harry Potter and the Philosopher''s Stone', 1997, 2, 2);

-- Додавання даних у таблицю users
insert into users (username, email)
values ('john_doe', 'john.doe@example.com'),
       ('jane_smith', 'jane.smith@example.com');

-- Додавання даних у таблицю borrowed_books
insert into borrowed_books (book_id, user_id, borrow_date, return_date)
values (1, 1, '2024-11-01', '2024-11-15'),
       (2, 2, '2024-11-05', '2024-11-20');