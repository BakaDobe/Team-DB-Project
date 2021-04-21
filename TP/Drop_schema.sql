/*
*   @authors Alvin Alagos Eli ,De Andre Powell Mckain, , Alexandra Vovc
*   @since 2021-04-19
*   @version 1.0
*
*   Team Project
*   -This is the drop schema for our database. All drop statements will be allocated here.
*/

DROP TABLE HOTEL;
DROP TABLE PILOT;
DROP TABLE BOARDINGPASS;
DROP TABLE AIRPORTAGENT;
DROP TABLE TICKET;
DROP TABLE LUGGAGE;
DROP TABLE AIRPLANE;
DROP TABLE FLIGHT;
DROP TABLE AIRLINE;
DROP TABLE TRAVELER;
DROP TABLE AIRPORT;

DROP SEQUENCE airline_flight_fk_sequence;
DROP SEQUENCE airline_airplane_fk_sequence;
DROP SEQUENCE flight_airplane_sequence;
DROP SEQUENCE traveler_luggage_fk_sequence;
DROP SEQUENCE flight_luggage_fk_sequence;
