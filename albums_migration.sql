USE codeup_test_db;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist_first_name VARCHAR(50) DEFAULT 'NONE',
    artist_last_name  VARCHAR(100),
    record_name  VARCHAR(100),
    release_date  DATE,
    num_sales  FLOAT(10,2),
    genre   VARCHAR(100),
    PRIMARY KEY (id)
);
