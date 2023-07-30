
SET SERVEROUTPUT ON;
SET VERIFY OFF;


-- a temp table to keep the backup of updated row of
-- doctor table
CREATE TABLE new_doctor (
    did int PRIMARY KEY,
    name VARCHAR2(20),
    specialty VARCHAR2(15),
    contact VARCHAR2(13)
);

-- SELECT * FROM new_doctor;





-- UPDATE doctor SET name = 'New Name' WHERE did = 123;







-- DROP TABLE new_doctor CASCADE CONSTRAINTS;