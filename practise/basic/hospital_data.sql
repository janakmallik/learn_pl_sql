-- prepared by sanzana karim lora
-- edited by janak mallik

DROP TABLE prescription CASCADE CONSTRAINTS;
DROP TABLE appointment CASCADE CONSTRAINTS;
DROP TABLE doctor CASCADE CONSTRAINTS;
DROP TABLE patient CASCADE CONSTRAINTS;

CREATE TABLE patient (
    pid int PRIMARY KEY,
    name VARCHAR2(20),
    age int,
    gender VARCHAR2(6),
    address VARCHAR2(15),
    contact VARCHAR2(13)
);

CREATE TABLE doctor (
    did int PRIMARY KEY,
    name VARCHAR2(20),
    specialty VARCHAR2(15),
    contact VARCHAR2(13)
);

CREATE TABLE appointment (
    aid INT PRIMARY KEY,
    pid INT,
    did INT,
    adate DATE,
    CONSTRAINT fk_patient FOREIGN KEY (pid)
        REFERENCES patient(pid),
    CONSTRAINT fk_doctor FOREIGN KEY (did)
        REFERENCES doctor(did)
);

CREATE TABLE prescription (
    prs INT PRIMARY KEY,
    aid INT,
    medication VARCHAR(30),
    dosage VARCHAR(20),
    CONSTRAINT fk_appointment FOREIGN KEY (aid)
        REFERENCES appointment(aid)
);

INSERT INTO Patient VALUES (1, 'John Doe', 60, 'Male', '123 Main St', '1234567890');

INSERT INTO Patient VALUES (2, 'Jane Smith', 61, 'Female', '456 Elm St', '9876543210');

INSERT INTO Patient VALUES (3, 'Bianca Anne', 18, 'Female', '49 Old Kent', '7776543217');

INSERT INTO patient VALUES (4, 'William Martin', 40, 'Male', '78 Pall Mall', '9234567810');

INSERT INTO patient VALUES (5, 'Coco', 18, 'Female', '78 Pall Mall', '9934567810');


INSERT INTO doctor VALUES (1, 'Dr. Robert Johnson', 'Cardiology', '5551234567');

INSERT INTO doctor VALUES (2, 'Dr. Sarah Williams', 'Orthopedics', '5559876543');

INSERT INTO doctor VALUES (3, 'Dr. Andrew Kevin', 'Medicine', '5551873544');

INSERT INTO doctor VALUES (4, 'Dr. Jesica John', 'Orthopedics', '5551873524');



INSERT INTO appointment VALUES (1, 1, 1, DATE '2023-06-16');

INSERT INTO appointment VALUES (2, 2, 2, DATE '2023-06-16');

INSERT INTO appointment VALUES (3, 3, 3, DATE '2023-05-26');

INSERT INTO appointment VALUES (4, 4, 1, DATE '2023-06-16');


INSERT INTO prescription VALUES (1, 1, 'Aspirin', '1 tablet daily');

INSERT INTO prescription VALUES (2, 2, 'Aspirin', '2 tablets as needed');

INSERT INTO prescription VALUES (3, 3, 'Maxpro 40', '1 tablet daily night');

INSERT INTO prescription VALUES (4, 2, 'Aspirin', '1 tablet as needed');

COMMIT;



SELECT * FROM patient;
SELECT * FROM doctor;
SELECT * FROM appointment;
SELECT * FROM prescription;