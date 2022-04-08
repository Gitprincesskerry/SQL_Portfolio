-- This is Kerry Rainford's Week 5 Assignment IS361

-- Instructions: In a single SQL script, with comments, follow these steps:

-- 1. Create a new database (schema) called "Video_Reviews". 
DROP SCHEMA IF EXISTS `Video_Reviews`;
CREATE SCHEMA `Video_Reviews`;

-- 2. On the newly created schema, create one table to keep track of the videos. 
-- This table should include a unique ID, the title of the video, the length in minutes, and the URL. 
-- Populate the table with at least three related videos from YouTube, the Microsoft Power BI site, 
-- or other publicly available resources.

DROP TABLE IF EXISTS youtube_videos;
CREATE TABLE youtube_videos (
video_id INT PRIMARY KEY,
video_title VARCHAR(255) NOT NULL,
video_length TIME,
video_url VARCHAR(255) NOT NULL
);

INSERT INTO youtube_videos (video_id, video_title, video_length, video_url) VALUES (1, 'Learn SQL in 1 Hour - SQL Basics for Beginners', '1:02:23','https://www.youtube.com/watch?v=9Pzj7Aj25lw');
INSERT INTO youtube_videos (video_id, video_title, video_length, video_url) VALUES (2, 'SQL Joins Tutorial for Beginners - Inner Join, Left Join, Right Join, Full Outer Join', '18:03','https://www.youtube.com/watch?v=2HVMiPPuPIM');
INSERT INTO youtube_videos (video_id, video_title, video_length, video_url) VALUES (3, 'SQL Joins Explained |¦| Joins in SQL |¦| SQL Tutorial', '10:25','https://www.youtube.com/watch?v=9yeOJ0ZMUYw');

-- 3. Create a second table that provides at least two user reviews for each of at least two of the videos. 
-- These should be imaginary reviews that include columns for the user’s name (“Luis”, “Sonya”, etc.), 
-- the rating (which could be NULL, or a number between 0 and 5), and a short text review (“Loved it!”).
-- There should be a column that links back to the ID column in the table of videos.

DROP TABLE IF EXISTS youtube_reviews;
CREATE TABLE youtube_reviews (
Username VARCHAR(25) NOT NULL,
Rating INT,
Review VARCHAR(50) NOT NULL,
video_id INT
);

INSERT INTO youtube_reviews (Username, Rating, Review, video_id) VALUES ('Pythonqueen12', 5, 'I really learned SQL in one hour, thank you', 1);
INSERT INTO youtube_reviews (Username, Rating, Review, video_id) VALUES ('JavaKing90', 2, 'I have seen better videos.', 1);
INSERT INTO youtube_reviews (Username, Rating, Review, video_id) VALUES ('SQLlife24', 5, 'Loved It!!!', 2);
INSERT INTO youtube_reviews (Username, Rating, Review, video_id) VALUES ('HTML4Life12', 5, 'Great video to learn SQL Joins!!!', 2);

-- 4. Write a JOIN statement that shows information from both tables.

SELECT  
yv.video_id AS 'Video ID',
yv.video_title AS 'Video Title',
yv.video_length AS 'Video Length',
yv.video_url AS 'Video URL',
yr.Username AS 'Username',
yr.Rating 'Rating',
yr.Review 'Review'
FROM youtube_videos AS yv
JOIN youtube_reviews AS yr 
ON yv.video_id = yr.video_id;

-- The following code returns all records from both tables regardless of if there is a match or not
SELECT  
yv.video_id AS 'Video ID',
yv.video_title AS 'Video Title',
yv.video_length AS 'Video Length',
yv.video_url AS 'Video URL',
yr.Username AS 'Username',
yr.Rating 'Rating',
yr.Review 'Review'
FROM youtube_videos AS yv
LEFT JOIN youtube_reviews AS yr 
ON yv.video_id = yr.video_id;


