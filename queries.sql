Create DATABASE IF NOT EXISTS expensetracker;
USE expensetracker;

CREATE TABLE USER(
	userid bigint PRIMARY KEY auto_increment,
    name varchar(50) NOT NULL,
    username varchar(50) NOT NULL,
    email varchar(100)  NOT NULL UNIQUE,
    password varchar(255),
    phone varchar(20),
	active_yn TINYINT DEFAULT 1,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP
    );
CREATE TABLE Category(
categoryid int PRIMARY KEY auto_increment,
userid bigint NOT NULL,
name varchar(50) NOT NULL,
description varchar(200),
icon_url varchar(255),
type ENUM('INCOME','EXPENSE')not null default 'EXPENSE',

active_yn TINYINT DEFAULT 1,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,
	FOREIGN KEY (userid)
    REFERENCES user(userid)
    ON DELETE CASCADE
);
CREATE TABLE Transaction(
transactionid BIGINT  PRIMARY KEY auto_increment,
userid bigint NOT NULL,
categoryid int not null,

amount DECIMAL(10,2) not null,
note varchar(255),
transaction_date DATE NOT NULL,
active_yn TINYINT DEFAULT 1,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

FOREIGN KEY (userid)
    REFERENCES user(userid)
    ON DELETE CASCADE,

    FOREIGN KEY (categoryid)
    REFERENCES category(categoryid)
);

INSERT INTO USER (name, username, email, password, phone)
VALUES
('Gitesh Peswani', 'gitesh_p', 'gitesh@gmail.com', 'gitesh@123', '9876543210'),
('Rahul Sharma', 'rahul_s', 'rahul@gmail.com', 'rahul@123', '9999999991'),
('Leena Hinduja', 'leena_hinduja', 'leena@gmail.com', 'leena@123', '9999999992');

INSERT INTO Category(name, userid, description, type)
VALUES
  ('Food', 1, 'Daily food expenses', 'EXPENSE'),
  ('Travel', 1, 'Transport and travel expenses', 'EXPENSE');

INSERT INTO Transaction
(userid, categoryid, note, amount, transaction_date)
VALUES
(1, 1, 'College canteen - Lunch', 120.50, '2025-01-10'),
(1, 2, 'Daily commute - Bus Ticket', 45.00, '2025-01-11'),
(1, 1, 'Food with friends - Dinner', 250.75, '2025-01-12');



