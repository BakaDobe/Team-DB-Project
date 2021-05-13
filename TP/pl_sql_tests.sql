/*
*   @authors Alvin Alagos Eli , Alexandra Vovc, De Andre Powell Mckain
*   @since 2021-05-12
*   @version 1.0
*
*   Team Project
*  
*   -This script contains anonymous blocks testing the procedures, functions and triggers scripts.
*/

--Procedures Test----------
--1st anonymous block
DECLARE
  P_TRAVELER_ID NUMBER;
BEGIN
  P_TRAVELER_ID := 10;

  PROC_TRAVELER_INFO(
    P_TRAVELER_ID => P_TRAVELER_ID
  );
--rollback; 
END;
/

--2nd anonymous block
DECLARE
  P_TRAVELER_ID NUMBER;
BEGIN
  P_TRAVELER_ID := 13;

  PROC_TRAVELER_INFO(
    P_TRAVELER_ID => P_TRAVELER_ID
  );
--rollback; 
END;
/
----------------------------






--Trigger Test--------------
--DELETE TRIGGER
-- Execute Delete, Update, Insert.
SELECT * FROM AIRPLANE;

DELETE AIRPLANE WHERE A_CAPACITY = 500;
--END;

SELECT * FROM FLIGHT;

UPDATE FLIGHT SET F_ROUTE = 'London, England' WHERE FLIGHT_ID = 26;
