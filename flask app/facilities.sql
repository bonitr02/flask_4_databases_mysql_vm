show databases;
create database `hha504wk4b`;
use hha504wk4b;
show tables;

CREATE TABLE facilities (
    facility_id INT PRIMARY KEY AUTO_INCREMENT,
    facility_name VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL,
    citytown VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    zip_code INT,
    countyparish VARCHAR(50) NOT NULL,
    telephone_number INT
);

CREATE TABLE measures (
    score INT PRIMARY KEY AUTO_INCREMENT,
    facility_id INT,
    measure_id VARCHAR(50) NOT NULL,
    compared_to_national VARCHAR(50) NOT NULL,
    denominator INT,
    start_date DATE NOT NULL,
	end_date DATE NOT NULL,
    FOREIGN KEY (facility_id) REFERENCES facilities (facility_id)
);

INSERT INTO facilities
VALUES ('330005','KALEIDA HEALTH','100 HIGH STREET', 'BUFFALO', 'NY', '14210', 'ERIE', '8598620');

INSERT INTO facilities
VALUES ('330009','BRONX HEALTH SYSTEM','1276 FULTON AVENUE', 'BRONX', 'NY', '10456', 'BRONX', '5887000');

INSERT INTO measures
VALUES('3.6','330005', 'COMP_HIP_KNEE', 'No Different Than the National Rate', '203', '2019-04-10', '2022-03-31');

INSERT INTO measures
VALUES ('9', '330009', 'MORT_30_COPD', 'No Different Than the National Rate', '37', '2019-07-01', '2022-06-30');