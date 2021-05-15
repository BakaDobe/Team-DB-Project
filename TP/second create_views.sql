/*
*	@authors De Andre Powell McKain, Alvin Alagos Eli, Alexandra Vovc
*	@since 2021-05-15
*	@version 1.0
*
*	Team Project
*
*	-This script contains all the create statements for the database views
*/

-- This view get the details of the 
CREATE OR REPLACE VIEW VW_AIRPLANE_INFO AS
	SELECT a.airline_id, a.al_company, ap.a_capacity, ap.plane_id, fl.f_route, fl.f_terminalnum
	FROM AIRPLANE ap, AIRLINE a, FLIGHT fl 
	WHERE a.airline_id = ap.airline_id AND a.airline_id = fl.airplane_id WITH READ ONLY;