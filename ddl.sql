CREATE TABLE IF NOT EXISTS Member(
	member_id SERIAL PRIMARY KEY,
	email  VARCHAR(50) NOT NULL UNIQUE,
	password VARCHAR(50) NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	phone VARCHAR(20) NOT NULL UNIQUE,
	date_of_birth DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Metrics(
	metric_id SERIAL PRIMARY KEY,
	member_id INT REFERENCES Member(member_id),
	weight FLOAT,
	height FLOAT,
	date_updated DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Statistics(
	statistic_id SERIAL PRIMARY KEY,
	member_id INT REFERENCES Member(member_id),
	average_heartrate FLOAT,
	average_calories_burned FLOAT
);

CREATE TABLE IF NOT EXISTS Goal(
	goal_id SERIAL PRIMARY KEY,
	member_id INT REFERENCES Member(member_id),
	description TEXT NOT NULL,
	date_created DATE NOT NULL,
	date_target DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Achievement(
	achievement_id SERIAL PRIMARY KEY,
	member_id INT REFERENCES Member(member_id),
	description TEXT NOT NULL,
	date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS ExerciseRoutines(
	exercise_id SERIAL PRIMARY KEY,
	member_id INT REFERENCES Member(member_id),
	name VARCHAR (50) NOT NULL,
	sets INT NOT NULL,
	reps INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Trainer(
	trainer_id SERIAL PRIMARY KEY,
	email  VARCHAR(50) NOT NULL UNIQUE,
	password VARCHAR(50) NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	phone VARCHAR(20) NOT NULL UNIQUE,
	expertise VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS PersonalTrainingSession(
	session_id SERIAL PRIMARY KEY,
	member_id INT REFERENCES Member(member_id),
	trainer_id INT REFERENCES Trainer(trainer_id),
	session_date DATE NOT NULL,
	start_time TIME NOT NULL,
	end_time TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS AvailiableTimeslot(
	timeslot_id SERIAL PRIMARY KEY,
	trainer_id INT REFERENCES Trainer(trainer_id),
	session_date DATE NOT NULL,
	start_time TIME NOT NULL,
	end_time TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS Admin(
	admin_id SERIAL PRIMARY KEY,
	email  VARCHAR(50) NOT NULL UNIQUE,
	password VARCHAR(50) NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	phone VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Room(
	room_id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	location VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS RoomBooking(
	booking_id SERIAL PRIMARY KEY,
	admin_id INT REFERENCES Admin(admin_id),
	room_id INT REFERENCES Room(room_id),
	purpose VARCHAR(20) NOT NULL,
	session_date DATE NOT NULL,
	start_time TIME NOT NULL,
	end_time TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS GroupFitnessClass(
	class_id SERIAL PRIMARY KEY,
	trainer_id INT REFERENCES Trainer(trainer_id),
	booking_id INT REFERENCES RoomBooking(booking_id)
);

CREATE TABLE IF NOT EXISTS GroupClassMembers(
	class_id INT REFERENCES GroupFitnessClass(class_id),
	member_id INT REFERENCES Member(member_id)
);

CREATE TABLE IF NOT EXISTS Bill(
	billing_id SERIAL PRIMARY KEY,
	member_id INT REFERENCES Member(member_id),
	admin_id INT REFERENCES Admin(admin_id),
	description TEXT,
	amount FLOAT NOT NULL,
	due_date DATE NOT NULL,
	paid BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS Equipment(
	equipment_id SERIAL PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	status TEXT NOT NULL,
	last_serviced DATE NOT NULL
);
