#DATABASE DEFINITION LANGUAGE
#CREATE
CREATE DATABASE april_class;
CREATE DATABASE hospital;
CREATE SCHEMA testing;
DROP DATABASE testing;
CREATE TABLE patient (
patient_id int,
patient_name text,
dob date,
gender varchar(1),
blood_group varchar(3)
);

CREATE TABLE staff (
staff_id varchar(6),
staff_name text,
job_role text,
date_employed date,
salary_per_month float
);

#ALTER
#RENAME COLUMN,MODIFY,ADD COLUMN,DROP COLUMN

ALTER TABLE staff
RENAME COLUMN date_employed TO date_emp;

ALTER TABLE staff
RENAME COLUMN job_role TO position;

ALTER TABLE staff
MODIFY staff_id varchar(7);

ALTER TABLE staff
ADD COLUMN addr text;

ALTER TABLE patient
ADD COLUMN genotype varchar(3);

ALTER TABLE patient
DROP COLUMN genotype;