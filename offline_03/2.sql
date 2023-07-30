SET VERIFY OFF;
SET SERVEROUTPUT ON;

DECLARE
    a album.albumID%type := &x;
    tt track.trackTitle%TYPE;
    rd track.released%TYPE;

    -- c patient.gender%TYPE;

BEGIN
    FOR i IN (SELECT trackTitle, released FROM track WHERE albumID) LOOP
END;
/