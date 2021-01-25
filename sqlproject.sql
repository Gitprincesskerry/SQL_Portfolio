-- Create a videos table. This table should include a unique ID, the title of the video, 
--the length in minutes, and the URL. Populate the table with at least three related videos
--from YouTube or other publicly available resources.

DROP TABLE IF EXISTS videos;
-- In a real life situation a table will not be dropped. In this case the table is being dropped for the
--sole purpose of allowing the script to run multiple times.

CREATE TABLE videos(
video_id INT PRIMARY KEY,
video_title VARCHAR(50) NOT NULL,
video_length TIME NOT NULL,
video_url VARCHAR(255) UNIQUE NOT NULL);

INSERT INTO videos (video_id, video_title, video_length, video_url)
VALUES ('1','SQL Tutorial - Full Database Course for Beginners', '4:20:38', 'https://www.youtube.com/watch?v=HXV3zeQKqGY&t=2089s'),
('2','Google Coding Interview With A College Student', '0:59:56', 'https://www.youtube.com/watch?v=3Q_oYDQ2whs'),
('3','Coding Interviews are Broken', '6:03', 'https://www.youtube.com/watch?v=bx3--22D4E4');

--Create and populate Reviewers table.
--Create a second table that provides at least two user reviews for each of at least two of the videos. 
--These should be imaginary reviews that include columns for the user’s name (“Asher”, “John”, etc.), 
--the rating (which could be NULL, or a number between 0 and 5), and a short text review (“Loved it!”).
--There should be a column that links back to the ID column in the table of videos.
--Report on Video Reviews.

DROP TABLE IF EXISTS reviewers;

CREATE TABLE reviewers(
reviewer_id serial PRIMARY KEY,
reviewer_firstname VARCHAR(25) NOT NULL,
reviewer_lastname VARCHAR(25) NOT NULL,
reviewer_username VARCHAR(20) UNIQUE NOT NULL,
rating INT,
review VARCHAR(50),
video_id INT NOT NULL);

INSERT INTO reviewers (reviewer_firstname, reviewer_lastname, reviewer_username, rating, review, video_id)
VALUES ('Jane', 'Doe', 'sqllife48', 4, 'Great but, too long', '1'),
('Kay', 'Jones', 'flowerprincess88', 5,'Great advice, thank you for sharing!', '3'),
('Shane', 'Gayle', 'pythonking30', 5, 'Great analogy to home depot', '3'),
('Nego', 'Jovano', 'dataanalticking5', 5, 'Great video! I learned SQL in about 4 hours!', '1'),
('Harry', 'Smalls', 'powerbilife8', 3, 'Too long', '1'),
('Dan', 'Small', 'tableaulife7', 5, 'Great video', '2'),
('Joe', 'Smith', 'excelking67', 5, 'Loved it, I just subscribed', '2');

--Write a JOIN statement that shows information from both tables.
SELECT r.reviewer_username, r.rating, r.review FROM reviewers r
INNER JOIN videos v
ON v.video_id = r.video_id;