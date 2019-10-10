-- Write SELECT statements to output each of the following with a caption:
--
-- All albums in your table.
-- All albums released before 1980
-- All albums by Michael Jackson
-- After each SELECT add an UPDATE statement to:
--
-- Make all the albums 10 times more popular (sales * 10)
-- Move all the albums before 1980 back to the 1800s.
-- Change 'Michael Jackson' to 'Peter Jackson'
-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.
USE codeup_test_db;
SELECT 'All albums';
SELECT * FROM albums;
UPDATE albums SET sales = sales * 10;
SELECT 'Albums released before 1980';
SELECT * FROM albums WHERE release_year < 1980;
UPDATE albums SET release_year = REPLACE(release_year, '19', '18') WHERE release_year < 1980;
SELECT 'Michael Jackson Albums';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = REPLACE(artist, 'Michael Jackson', 'Michael Peter Jackson') WHERE artist = 'Michael Jackson';
