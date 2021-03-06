USE petlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS ad_category;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(32) NOT NULL UNIQUE ,
    email VARCHAR(50) NOT NULL UNIQUE ,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
        ON DELETE CASCADE
);

CREATE TABLE categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    category VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ad_category (
    ad_id INT UNSIGNED NOT NULL,
    category_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ads (id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES categories (id)
);


INSERT INTO categories(category)
VALUES ('free'),
       ('iso'),
       ('for sale'),
       ('dog'),
       ('cat'),
       ('bird'),
       ('reptile'),
       ('other');


# SELECT * FROM ads WHERE title LIKE '%bird%' OR description LIKE '%bird%'
SELECT * FROM ads JOIN users ON ads.user_id = users.id WHERE users.id=2;
