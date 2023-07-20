# RDS Demo

## Creaye RDS Instance - MySQL

- Use the Easy Create option
- Engine: MySQL
- DB instance size: free or dev/test
- DB cluster identifier: <enter dbname ... >
- Master username, and passord
- Create Database


## Install MySQL client on EC2 or local machine or AWS Cloud9 service

1. Open a terminal window. 

2. Install the MySQL Community repository: (incase this option is not working (dnf command not found) try option 2.1)

  ```shell
  $ sudo wget https://dev.mysql.com/get/mysql80-community-release-el9-1.noarch.rpm 
  $ sudo ls -lrt
  ```
  - Install the MySQL server:
  ```shell
  $ sudo dnf install mysql80-community-release-el9-1.noarch.rpm
  $ dnf repolist enabled | grep "mysql.*-community.*"
  $ sudo dnf install mysql-community-server
  ```
  - Start the MySQL server:

  ```shell
  $ sudo systemctl start mysqld
  $ sudo mysql -V
  ```

2.1. Option 2 to install MySQL

```shell
  #  this command updates all packages to the latest version
    $ sudo yum update -y 

  # this command installs MySQL server on your machine, it also creates a systemd service
    $ sudo yum install -y mariadb-server

  # this command enables the service created in previous step
    $ sudo systemctl enable mariadb

  # this command starts the MySQL server service on your Linux instance
   $ sudo systemctl start mariadb
```

3. Access MySql server 
```shell
$ mysql -h <MySQL instance endpoint> -P<portnumber> -u admin  -p 
```

## Connecting to DB from laptop terminal 

Example:
```shell
$ sudo mysql -h mysql–instance1.123456789012.us-east-1.rds.amazonaws.com -P 3306 -u mymasteruser -p
```
## 

## Connecton Troubleshooting
1. Publicly accessible to yes (usually not recommended )
2. Security Group: Inbound rule, MySQL , 0.0.0.0/0


## Connecting to DB instance from MySQL Workbench

- From Database menue select Manage Connections
- Creat New Connection
- Hostname : "RDS instance Endpoint"
- Port : "port number"
- username and password
- Test connection

# MySQL Example:

1. Create a database:
```sql
CREATE DATABASE example_db;
```

2. Use the newly created database:
```sql
USE example_db;
```

3. Create a table:
```sql
CREATE TABLE records (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50),
  age INT,
  city VARCHAR(50)
);
```

4. Insert 20 records into the table:

```sql
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
```

5. Read all the data from the table:
```sql
SELECT * FROM records;
```

