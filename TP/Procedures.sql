/*
* Team Project
*
*@author Alvin Alagos Eli, De Ander Powell Mckain, Alexandra Vovc
*@date 2021-05-03
*@version 1.0
*
*/

--This procedure will retrieve information about the traveller travelling info. It will receive the traveler_id as input
--The output will generate the traveller's id , full name, number of luggages carrying, ticket id, airline company they are flying with and its destination.
 CREATE OR REPLACE PROCEDURE proc_traveler_info(p_traveler_id in NUMBER) 
  is
   CURSOR c_traveler_info IS
     SELECT t.traveler_id,t.t_fname, t.t_lname, l.l_numofluggage, h.h_address, ti.ticket_id, a.al_company, f.f_route
     FROM TRAVELER t, LUGGAGE l, HOTEL h, TICKET ti, AIRLINE a, FLIGHT f
     WHERE p_traveler_id = t.traveler_id AND t.traveler_id = l.traveler_id AND t.traveler_id = h.traveler_id AND t.traveler_id = ti.traveler_id
     AND ti.airline_id = a.airline_id AND ti.flight_id = f.flight_id ; 
        
r_traveler_info c_traveler_info%ROWTYPE;

    
  BEGIN
    
    OPEN c_traveler_info;
    FETCH c_traveler_info INTO r_traveler_info;
    CLOSE c_traveler_info;
    dbms_output.put_line('-----------------------------------------------------------------------');
    dbms_output.put_line('Traveller id: ' || r_traveler_info.traveler_id);
    dbms_output.put_line('Full Name: ' || r_traveler_info.t_fname ||' ' || r_traveler_info.t_lname);
    dbms_output.put_line('Number of luggage carrying: ' || r_traveler_info.l_numofluggage);
    dbms_output.put_line('Ticket id: ' || r_traveler_info.ticket_id);
    dbms_output.put_line('Flying with: ' || r_traveler_info.al_company);
    dbms_output.put_line('Destination :' || r_traveler_info.f_route);
    dbms_output.put_line('-----------------------------------------------------------------------');
    
  EXCEPTION
    WHEN no_data_found
    THEN
         dbms_output.put_line('This id is not associated with any record');
         
  END;
/




