/*
*   @authors Alvin Alagos Eli , Alexandra Vovc, De Andre Powell Mckain
*   @since 2021-05-12
*   @version 1.0
*
*   Team Project
*  
*   -This script contains all the create statements for the database views
*/

-- This view gets the details of the travller 
CREATE OR REPLACE VIEW VW_TRAVELER_INFO AS
    SELECT t.traveler_id, t.t_fname, t.t_lname, l.l_numofluggage, l.l_weight, bp.b_boardingpass_id, bp.b_classtype
    FROM TRAVELER t, LUGGAGE l, BOARDINGPASS bp
    WHERE t.traveler_id = l.traveler_id AND t.traveler_id = bp.traveler_id WITH READ ONLY;
    
 
