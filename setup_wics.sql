CREATE TABLE member (
    member_id INT PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE, 
    major TEXT,
    join_date DATE NOT NULL,
    membership_end_date DATE DEFAULT NULL
);

CREATE TABLE officer (
    officer_id INT PRIMARY KEY,
    member_id INT NOT NULL, -- not UNIQUE so that member can be officer more than once
    position TEXT NOT NULL
        CHECK (position IN ('President', 'Vice President', 'Social Media Outreach', 'General')), 
    term_start DATE NOT NULL,
    term_end DATE DEFAULT NULL,
    FOREIGN KEY (member_id) REFERENCES member(member_id)
);

CREATE TABLE company (
    company_id INT PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE
);

CREATE TABLE event (
    event_id INT PRIMARY KEY,
    company_id INT, -- can be NULL for internal events
    title TEXT NOT NULL,
    date DATE NOT NULL, 
    start_time TIME NOT NULL, 
    end_time TIME NOT NULL,
    FOREIGN KEY (company_id) REFERENCES company(company_id)
);

CREATE TABLE officer_event (
    officer_event_id INT PRIMARY KEY,
    officer_id INT NOT NULL, 
    event_id INT NOT NULL,
    FOREIGN KEY (officer_id) REFERENCES officer(officer_id),
    FOREIGN KEY (event_id) REFERENCES event(event_id),
    UNIQUE (officer_id, event_id) -- prevent officer from signing up for same event multiple times
);

CREATE TABLE room (
    room_id INT PRIMARY KEY,
    building TEXT NOT NULL,
    room_number TEXT NOT NULL,
    capacity SMALLINT NOT NULL
);

CREATE TABLE room_reservation (
    reservation_id INT PRIMARY KEY,
    room_id INT NOT NULL,
    event_id INT NOT NULL,
    reservation_date DATE NOT NULL,
    reservation_start TIME NOT NULL,
    reservation_end TIME NOT NULL,
    FOREIGN KEY (room_id) REFERENCES room(room_id),
    FOREIGN KEY (event_id) REFERENCES event(event_id)
);
-- TODO: you might want to enforce that reservation times do not overlap

CREATE TABLE catering (
    catering_id INT PRIMARY KEY,
    restaurant_name TEXT NOT NULL
);

CREATE TABLE event_catering (
    catering_id INT NOT NULL,
    event_id INT NOT NULL,
    PRIMARY KEY (catering_id, event_id),
    FOREIGN KEY (catering_id) REFERENCES catering(catering_id),
    FOREIGN KEY (event_id) REFERENCES event(event_id)
);

CREATE TABLE rsvp (
    rsvp_id INT PRIMARY KEY,
    event_id INT NOT NULL,
    member_id INT NOT NULL, 
    response BOOLEAN NOT NULL, -- 1 for planning on attending, 0 for not planning on attending
    FOREIGN KEY (event_id) REFERENCES event(event_id),
    FOREIGN KEY (member_id) REFERENCES member(member_id),
    UNIQUE (event_id, member_id) -- prevent member from RSVPing multiple times to same event
);

CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    event_id INT NOT NULL,
    member_id INT NOT NULL,
    FOREIGN KEY (event_id) REFERENCES event(event_id),
    FOREIGN KEY (member_id) REFERENCES member(member_id)
);