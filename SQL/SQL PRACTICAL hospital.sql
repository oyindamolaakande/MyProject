#DATA MANIPULATION LANGUAGE
## INSERT,DELETE AND UPDATE

SELECT *
FROM patient;

INSERT INTO patient
VALUES(1,"Mary Magdalene","1772-04-23","F","O+","AA");

INSERT INTO patient
VALUES (2, "Bisola Banks", "1990-01-19", "F", "O+", "AA"),
(3, "Wales Gates", "2002-04-23", "M", "O-", "AS");

#DELETE
##DELETE FROM TABLE

DELETE FROM patient
WHERE patient_id=3;

#UPDATE

UPDATE patient
SET dob = "1992-04-23"
WHERE patient_id = 1;

SELECT *
FROM patient;

INSERT INTO patient
VALUES(1,"Declan Rice","2001-02-03","M","O-","AS");

#SINCE THERE'S CONTRAINTS,2 PATIENTS WILL HAVE THE SAME PATIENT ID

INSERT INTO patient (patient_id, patient_name, gender)
VALUES (4, "Kim Kardarshian", "F");

#HERE, WE WILL GET NULL IN SOME COLUMNS, SINCE WE DIDN'T PUT IN ALL DETAILS AND ONLY FOCUS ON SOME COLUMNS

DROP TABLE staff;

CREATE TABLE staff (
	staff_id varchar(6) PRIMARY KEY, 
    staff_name text,
    job_role text,
    phone_no varchar(11) UNIQUE,
    date_employed date,
    salary_per_month float NOT NULL
    );
    
    SELECT *
    FROM staff;
    
    INSERT INTO staff
VALUES ("HP0001", "John Hopkins", "Doctor", "98424892839", "2010-01-01",
"3000");

INSERT INTO staff
VALUES ("HP0003", "Segun Johnson", "Pharmacist", "08124892839", "2010-02-01",
"2100");

INSERT INTO staff
VALUES ("HP0004", "Toba Gbengz", "Driver",
"08124832839", "2010-02-01", 1500.63);

#FLOAT IS A NUMERIC DATATYPE, YOU DON'T HAVE TO QUOTE IT " ", OR YOU CAN, IT WILL STILL WORK

