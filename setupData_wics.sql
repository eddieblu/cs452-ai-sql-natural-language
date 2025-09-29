INSERT INTO member (member_id, name, email, major, join_date, membership_end_date) VALUES
(1, 'Alice Johnson', 'alice.johnson@byu.edu', 'Computer Science', '2025-09-01', NULL),
(2, 'Bella Lee', 'bella.lee@byu.edu', 'Computer Engineering', '2025-09-01', NULL),
(3, 'Cathy Smith', 'cathy.smith@byu.edu', 'Computer Science', '2025-09-01', NULL),
(4, 'David Kim', 'david.kim@byu.edu', 'ACME', '2025-09-01', NULL),
(5, 'Emily Chen', 'emily.chen@byu.edu', 'Data Science', '2025-09-01', NULL),
(6, 'Fiona Turner', 'fiona.turner@byu.edu', 'Software Engineering', '2025-09-01', NULL);

INSERT INTO officer (officer_id, member_id, position, term_start, term_end) VALUES
(1, 1, 'President', '2025-09-01', NULL),
(2, 2, 'Vice President', '2025-09-01', NULL),
(3, 3, 'Social Media Outreach', '2025-09-01', NULL),
(4, 5, 'General', '2025-09-01', NULL);

INSERT INTO company (company_id, name, email) VALUES
(1, 'Lucid', 'contact@lucid.com'),
(2, 'FAST Enterprises', 'info@fastenterprises.com'),
(3, 'Adobe', 'support@adobe.com');

INSERT INTO event (event_id, company_id, title, date, start_time, end_time) VALUES
(1, 1, 'Opening Social', '2025-09-10', '17:00', '18:00'),
(2, 2, 'Interview Preparation', '2025-09-17', '16:30', '17:30'),
(3, 3, 'Lunch and Learn', '2025-10-02', '11:00', '12:00');

INSERT INTO officer_event (officer_event_id, officer_id, event_id) VALUES
(1, 1, 1), 
(2, 2, 2), 
(3, 4, 3); 

INSERT INTO room (room_id, building, room_number, capacity) VALUES
(1, 'Wilkinson Student Center', '3290', 100),
(2, 'Tanner Building', '374', 50),
(3, 'Wilkinson Student Center', '3228', 150);

INSERT INTO room_reservation (reservation_id, room_id, event_id, reservation_date, reservation_start, reservation_end) VALUES
(1, 1, 1, '2025-09-10', '16:30', '18:30'),
(2, 2, 2, '2025-09-17', '16:00', '18:00'),
(3, 3, 3, '2025-10-02', '10:30', '12:30');

INSERT INTO catering (catering_id, restaurant_name) VALUES
(1, 'Cupbop'),
(2, 'Cafe Zupas'),
(3, 'Costa Vida'),
(4, 'Papa Johns'),
(5, 'Chickfila');

INSERT INTO event_catering (catering_id, event_id) VALUES
(1, 1),
(2, 2);

INSERT INTO rsvp (rsvp_id, event_id, member_id, response) VALUES
(1, 1, 1, 1),
(2, 1, 2, 0),
(3, 1, 3, 1),
(4, 1, 5, 1),
(5, 1, 4, 1),
(6, 1, 6, 1),
(7, 2, 1, 1),
(8, 2, 2, 1),
(9, 2, 3, 1),
(10, 2, 5, 0),
(11, 2, 6, 1),
(12, 3, 1, 1),
(13, 3, 2, 1),
(14, 3, 6, 1);

INSERT INTO attendance (attendance_id, event_id, member_id) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 5),
(4, 1, 6),
(5, 2, 1),
(6, 2, 2),
(7, 2, 3),
(8, 2, 6); 