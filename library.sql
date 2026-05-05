-- ERD sistem kepustakaan

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    category_id int NOT NULL,
    rack_id int NOT NULL,
    author VARCHAR(255) NOT NULL,
    publish_year int NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(id),
    FOREIGN KEY (rack_id) REFERENCES rack_book(id)
);

CREATE TABLE category (
    id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    category_book VARCHAR(100)
);

CREATE TABLE rack_book (
    id SERIAL PRIMARY KEY,
    location_book VARCHAR(50)
);

CREATE TABLE staff (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(100) NOT NULL
);

CREATE TABLE rent (
    id SERIAL PRIMARY KEY,
    loan_date TIMESTAMP DEFAULT NOW() NOT NULL,
    return_date TIMESTAMP,
    staff_id INTEGER NOT NULL,
    book_id INTEGER NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES staff(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);

table staff
--insert category
INSERT INTO category (category_book) VALUES
('Fiction'),('Comedy'),('Romance'),('Thriller'),('Horror'),('Adventure'),('Adult'),('Education'),('Random'),('No Specificatio');

--insert rack_book
INSERT INTO rack_book (location_book) VALUES 
('North'),('South'),('East'),('West');

--insert book
INSERT INTO books (title, category_id, rack_id, author, publish_year) VALUES
('Ada-ada aja', 3, 2, 'Bebeng', 2010),('Si ISA 36 Juta', 4, 4, 'Batch-7', 2026),('Matematika itu asik', 8, 1, 'Pendidik Bangsa', 2018),('Savoria',9,2,'Mateo', 2022),('Miracle in jinx', 1,2, 'Step-an', 2020),('Output', 5, 1, 'Lokalisasi', 2013),('Semua Tentang Kita', 7, 3, 'BA', 2009),('Freedom in justice', 6, 4, 'Suneo Surahman', 2000),('Si madun', 1, 1, 'Si Normal', 2008),('Legenda Wisata', 2,2,'Cileungsi', 2004);

--insert staff
INSERT INTO staff (name) VALUES
('Slamet'),('Raharjo'),('Wijoyo');

--insert rent_book
INSERT INTO rent (staff_id, book_id) VALUES
(2,6),(1,4),(1,5),(2,3),(3,9);