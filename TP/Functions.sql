/*
* Team Project
*
*@author Alvin Alagos Eli, De Ander Powell Mckain, Alexandra Vovc
*@date 2021-05-03
*@version 1.0
*
*/

--This function will retrieve information about the ticket and then return the record.
--The output will generate the ticket's ID, traveler's ID, airline company's ID and its destination.
    CREATE OR REPLACE FUNCTION func_ticket_info(in_ticket_id IN ticket.TICKET_ID%TYPE)
      RETURN ticket%ROWTYPE
        AS
  ticket_record ticket%ROWTYPE;

    BEGIN
  SELECT *
  INTO   ticket_record
  FROM   ticket
  WHERE  TICKET_ID = in_ticket_id;
  
    RETURN ticket_record;
END;
/
