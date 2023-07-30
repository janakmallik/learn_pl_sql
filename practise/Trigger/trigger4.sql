
SET SERVEROUTPUT ON;
SET VERIFY OFF;

-- keep an backup before update
CREATE or REPLACE TRIGGER copy_trig
BEFORE UPDATE
ON doctor
FOR EACH ROW
DECLARE
    a doctor.did%TYPE;
    b doctor.name%TYPE;
    c doctor.specialty%TYPE;
    d doctor.contact%TYPE;

BEGIN
    a := :OLD.did;
    b := :OLD.name;
    c := :OLD.specialty;
    d := :OLD.contact;

    INSERT INTO new_doctor VALUES(a, b, c, d);
END;
/

