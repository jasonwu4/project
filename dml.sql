
INSERT INTO Member(email, password, first_name, last_name, phone, date_of_birth) VALUES
('jasonwu@email.com', 'password1', 'Jason','Wu','123-456-7890', '2003-11-07'),
('johndoe@email.com', 'password2', 'John', 'Doe', '123-321-5315', '1990-01-01'),
('lebronjames@email.com', 'password3', 'Lebron', 'James', '453-311-5235', '1989-12-22'),
('michaeljordan@email.com', 'password4', 'Michael', 'Jordan', '443-555-5232', '2001-11-09');

INSERT INTO Trainer(email, password, first_name, last_name, phone, expertise) VALUES
('davidlaid@email.com', 'trainer1', 'David','Laid','444-555-6666','Strength Trainer'),
('jeremybrown@email.com', 'trainer2', 'Jeremy','Brown','123-111-2222','Cardio Trainer'),
('hughsmith@email.com', 'trainer3', 'Hugh','Smith','489-921-4741','Weight Loss Trainer');

INSERT INTO Admin(email, password, first_name, last_name, phone) VALUES
('barackobama@email.com', 'admin1', 'Barack', 'Obama', '315-555-9999'),
('oliviarodrigo@email.com', 'admin2', 'Olivia', 'Rodrigo', '512-124-8714');


INSERT INTO Metrics(member_id, weight, height, date_updated) VALUES
(1,160,180,'2024-04-13'),
(2,200,192,'2024-01-13'),
(3,250,215,'2023-08-22'),
(4,210,202,'2024-04-13');


INSERT INTO Statistics(member_id, average_heartrate, average_calories_burned) VALUES
(1,101,400),
(2,111,420),
(3, 120, 233),
(4,134,333);


INSERT INTO Goal(member_id, description, date_created, date_target) VALUES
(1, 'Run kilometer in 3 minutes', '2024-01-01','2025-01-01'),
(1, 'Bench 225lbs', '2024-02-01','2025-01-01'),
(2, 'Lose 50lbs', '2024-01-01','2025-01-01');


INSERT INTO Achievement(member_id, description, date) VALUES
(1, 'Bench 200lbs', '2023-11-12'),
(1, 'Run kilometer in 4 minutes', '2023-12-15'),
(2, 'Weight 250lbs', '2023-12-30');


INSERT INTO ExerciseRoutines(member_id, name, sets, reps) VALUES
(1, 'Bench Press', 3, 10),
(1, 'Chest Press', 3, 9),
(1, 'Pushups', 3, 20);


INSERT INTO PersonalTrainingSession(member_id, trainer_id, session_date, start_time, end_time) VALUES
(1,1,'2024-04-14', '2:30pm','3:30pm'),
(1,2,'2024-04-16', '12:45pm','1:45pm'),
(2,1, '2024-04-14','3:45pm','4:45pm');


INSERT INTO AvailiableTimeslot(trainer_id, session_date, start_time, end_time) VALUES
(1, '2024-04-15', '9:30am','10:30am'),
(1, '2024-04-15', '10:45am','11:45am'),
(1, '2024-04-16', '9:30am','10:30am');


INSERT INTO Room(name, location) VALUES
('Yoga Room', '4th floor'),
('Weight Room', '2nd floor'),
('Lounge', '1st floor');


INSERT INTO RoomBooking(admin_id, room_id, purpose, session_date, start_time, end_time) VALUES
(1, 1, 'Yoga Class', '2024-05-01','1:30pm','2:30pm'),
(1, 3, 'Birthday Party', '2024-05-01','3:30pm','6:30pm'),
(1, 2, 'Lifting Tutorial', '2024-05-02','1:30pm','2:30pm');


INSERT INTO GroupFitnessClass(trainer_id, booking_id) VALUES
(1,1),
(1,3);


INSERT INTO GroupClassMembers(class_id, member_id) VALUES
(1,1),
(1,2),
(1,3),
(2,1),
(2,2);


INSERT INTO Bill(member_id, admin_id, description,amount, due_date, paid) VALUES
(1,1, 'Monthly Subscription', '25.99', '2024-04-01', TRUE),
(1,1, 'Monthly Subscription', '25.99', '2024-05-01', FALSE),
(1, 1, 'Personal Trainer Session', '30.20', '2024-05-01', FALSE),
(1, 1, 'Personal Trainer Session', '49.50', '2024-05-01', TRUE),
(2,1, 'Personal Trainer Session', '30.20', '2024-05-01',TRUE);


INSERT INTO Equipment(name, status, last_serviced) VALUES
('Bench Machine', 'Good Condition', '2024-01-01'),
('Treadmill 1', 'Good Condition', '2024-01-01'),
('Treadmill 2', 'Poor Condition, requires maintenance', '2024-01-01');



