CREATE DATABASE awsdemo;

use awsdemo 

CREATE TABLE records (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  age INT,
  city VARCHAR(50)
);

INSERT INTO records (name, age, city) VALUES
  ('John Doe', 25, 'New York'),
  ('Jane Smith', 30, 'Los Angeles'),
  ('Michael Johnson', 40, 'Chicago'),
  ('Emily Davis', 28, 'San Francisco'),
  ('David Wilson', 35, 'Miami'),
  ('Sarah Thompson', 32, 'Seattle'),
  ('Robert Anderson', 27, 'Boston'),
  ('Jennifer Martin', 33, 'Houston'),
  ('Christopher Lee', 29, 'Dallas'),
  ('Amanda Wright', 31, 'Austin'),
  ('Daniel Taylor', 26, 'Denver'),
  ('Olivia White', 34, 'Phoenix'),
  ('Matthew Brown', 29, 'Philadelphia'),
  ('Emma Taylor', 27, 'Washington, D.C.'),
  ('James Clark', 30, 'San Diego'),
  ('Sophia Allen', 36, 'Atlanta'),
  ('Joseph Hill', 28, 'Nashville'),
  ('Mia Green', 33, 'Portland'),
  ('William Turner', 31, 'Las Vegas'),
  ('Grace Cooper', 35, 'New Orleans');
  
  SELECT * FROM records;