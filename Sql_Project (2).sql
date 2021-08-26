CREATE TABLE VIDEOS(VIDEO_ID serial PRIMARY KEY,
																					TITLE_OF_VIDEO VARCHAR(70) NOT NULL,
																					LENGTH_OF_VIDEO float NOT NULL,
																					VIDEO_URL VARCHAR(70));


INSERT INTO VIDEOS
VALUES(1,'The Problem With Toosii Mindset',9.15,'https://www.youtube.com/watch?v=ziGpWuK93bg');


INSERT INTO VIDEOS
VALUES(2,'5 Bizarre Controllers That Changed Gaming',12.24,'https://www.youtube.com/watch?v=Lzz4wMlDZ6c');


INSERT INTO VIDEOS
VALUES(3,'Late night show w/7 girls',23.4,'https://www.youtube.com/watch?v=CDq4dmIBs-E');


SELECT *
FROM VIDEOS
FULL JOIN REVIEWERS ON VIDEOS.VIDEO_ID = REVIEWERS.VIDEO_ID;



SELECT *
FROM VIDEOS;




CREATE TABLE REVIEWERS(USER_ID VARCHAR(25),
																								RATING int, REVIEW CHAR(50));


ALTER TABLE REVIEWERS ADD COLUMN VIDEO_ID int, ADD CONSTRAINT FK_VIDEO
FOREIGN KEY(VIDEO_ID) REFERENCES VIDEOS(VIDEO_ID);


INSERT INTO REVIEWERS
VALUES('John Brown', 1,'She made a logic argument',3);


INSERT INTO REVIEWERS
VALUES('Frank Singh', 5,'Girls think that slick',1);


INSERT INTO REVIEWERS
VALUES('Chad Myers', 4, 'I feel like they rip me off', 2);


SELECT *
FROM REVIEWERS;