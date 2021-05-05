CREATE OR REPLACE TRIGGER TRG_YUL_INFO
-- 1) timming of the  trigger
BEFORE
-- 2) triggering statement (event)
DELETE OR
UPDATE OR
INSERT
-- 3) the table concerned being monitored/watched
ON AIRPLANE
BEGIN
    CASE
      WHEN INSERTING THEN
         DBMS_OUTPUT.PUT_LINE('Inserting...');
      WHEN UPDATING('salary') THEN
         DBMS_OUTPUT.PUT_LINE('Updating...');
      WHEN DELETING THEN
         DBMS_OUTPUT.PUT_LINE('Plane is at full capacity and can no longer be boarded.');
    END CASE;
END;
/

CREATE OR REPLACE TRIGGER TRG_FLIGHT_DEST
-- 1) timming of the  trigger
BEFORE
-- 2) triggering statement (event)
DELETE OR
UPDATE OF F_ROUTE OR
INSERT
-- 3) the table concerned being monitored/watched
ON FLIGHT
BEGIN
    CASE
      WHEN INSERTING THEN
         DBMS_OUTPUT.PUT_LINE('Inserting...');
      WHEN UPDATING('F_ROUTE') THEN
         DBMS_OUTPUT.PUT_LINE('Redirecting your destination to London, England');
      WHEN DELETING THEN
         DBMS_OUTPUT.PUT_LINE('Deleting...');
    END CASE;
END;
/