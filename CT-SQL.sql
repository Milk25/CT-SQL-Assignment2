
CREATE DATABASE fitness_id;
USE fitness_db;



CREATE TABLE Members (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    age INT
);



CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);


INSERT INTO Members (
	first_name,
    last_name,
    age
) VALUES (
	'Amilcar',
    'Cornier',
    48
);

INSERT INTO Members (
	first_name,
    last_name,
    age
) VALUES (
	'Rene',
    'Lopez',
    25
    
);

INSERT INTO WorkoutSessions (
	member_id,
    session_date,
    session_time,
    activity
    
) VALUES (
	 1,
    '2024-05-10',
    '8:00AM',
    'Swimming'

);


INSERT INTO WorkoutSessions (
	member_id,
    session_date,
    session_time,
    activity
    
) VALUES (
	2,
    '2024-05-10',
    '10:00AM',
    'Jogging'

);




UPDATE WorkoutSessions
SET activity = '5:00PM'
WHERE session_id = 2;

SELECT *
FROM Members;

DELETE FROM WorkoutSessions
WHERE member_id = 1;

