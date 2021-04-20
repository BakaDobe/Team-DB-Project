/*
*   @authors Alvin Alagos Eli , Alexandra Vovc, De Andre Powell Mckain
*   @since 2021-04-19
*   @version 1.0
*
*   Team Project
*   -This is the populate schema for our database. All insert statements located here will be used to populate
*   the tables created in the create_schema and also alter the tables to include check constraints.
*/

ALTER TABLE LUGGAGE 
    ADD CONSTRAINT ck_num_of_luggage CHECK(L_NUMOFLUGGAGE <= 3);
ALTER TABLE AIRPLANE
    ADD CONSTRAINT ck_a_capacity CHECK(A_CAPACITY <= 500);
    
CREATE SEQUENCE airport_fk_sequence
    INCREMENT BY 1
    START WITH 1350
    MAXVALUE 1360
    CYCLE;
    
CREATE SEQUENCE traveller_fk_sequence
    INCREMENT BY 1
    START WITH 10
    MAXVALUE 20
    CYCLE;
    

    
