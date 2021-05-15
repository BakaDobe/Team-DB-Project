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

--Anonymous block
DECLARE
  r_ticket TICKET%ROWTYPE;
BEGIN
  r_ticket := func_ticket_info( 1000 );
  dbms_output.put_line('Ticket ID - '||r_ticket.TICKET_ID||
    ', Traveler information - '||r_ticket.TRAVELER_ID||
    ', Airline ID - '||r_ticket.AIRLINE_ID||
    ', Flight ID - '||r_ticket.FLIGHT_ID||'.');
END;