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
    
    
CREATE SEQUENCE airline_flight_fk_sequence
    INCREMENT BY 1
    START WITH 51
    NOCACHE
    NOCYCLE;

CREATE SEQUENCE airline_airplane_fk_sequence
    INCREMENT BY 1
    START WITH 51
    NOCACHE
    NOCYCLE;
    
CREATE SEQUENCE flight_airplane_sequence
    INCREMENT BY 1
    START WITH 20
    NOCACHE
    NOCYCLE;
    
CREATE SEQUENCE traveler_luggage_fk_sequence
    INCREMENT BY 1
    START WITH 10
    NOCACHE
    NOCYCLE;
    
CREATE SEQUENCE flight_luggage_fk_sequence
    INCREMENT BY 1
    START WITH 20
    NOCACHE
    NOCYCLE;
    
CREATE SEQUENCE ticket_agent_fk_sequence
    INCREMENT BY 5
    START WITH 1000
    NOCACHE
    NOCYCLE;
    
CREATE SEQUENCE airport_agent_fk_sequence
    INCREMENT BY 1
    START WITH 1350
    NOCACHE
    NOCYCLE;

CREATE SEQUENCE airport_boardingpass_fk_sequence
    INCREMENT BY 1
    START WITH 1350
    NOCACHE
    NOCYCLE;
    
CREATE SEQUENCE traveler_boardingpass_fk_sequence
    INCREMENT BY 1
    START WITH 10
    NOCACHE
    NOCYCLE;
    
CREATE SEQUENCE traveler_hotel_fk_sequence
    INCREMENT BY 1
    START WITH 10
    NOCACHE
    NOCYCLE;
        
CREATE SEQUENCE plane_pilot_fk_sequence
    INCREMENT BY 1
    START WITH 100
    NOCACHE
    NOCYCLE;
    
CREATE SEQUENCE traveler_ticket_fk_sequence
    INCREMENT BY 1
    START WITH 10
    NOCACHE
    NOCYCLE;
    
CREATE SEQUENCE airline_ticket_fk_sequence
    INCREMENT BY 1
    START WITH 51
    NOCACHE
    NOCYCLE;
    
CREATE SEQUENCE flight_ticket_fk_sequence
    INCREMENT BY 1
    START WITH 20
    NOCACHE
    NOCYCLE;
    
--Airport
INSERT INTO AIRPORT (AIRPORT_ID, A_ADDRESS, A_PROVINCE, A_PHONENUM,A_POSTALCODE )
    VALUES(DEFAULT,'Romeo-Vachon Blvd N,Dorval', 'Quebec','(514) 394-7377', 'H4Y 1H1');
    
INSERT INTO AIRPORT (AIRPORT_ID, A_ADDRESS, A_PROVINCE, A_PHONENUM,A_POSTALCODE )
    VALUES(DEFAULT,'6301 Silver Dart Dr, Mississauga', 'Ontario', '(416) 247-7678', 'L5P 1B2');
    
INSERT INTO AIRPORT (AIRPORT_ID, A_ADDRESS, A_PROVINCE, A_PHONENUM,A_POSTALCODE )
    VALUES(DEFAULT,'2000 Airport Rd NE, Calgary', 'Alberta', '(403) 735-1200', 'T2E 6W5');
       
INSERT INTO AIRPORT (AIRPORT_ID, A_ADDRESS, A_PROVINCE, A_PHONENUM,A_POSTALCODE )
    VALUES(DEFAULT,'747 Bell Blvd, Goffs', 'Nova Scotia', '(902) 873-4422', 'B2T 1K2');
    
INSERT INTO AIRPORT (AIRPORT_ID, A_ADDRESS, A_PROVINCE, A_PHONENUM,A_POSTALCODE )
    VALUES(DEFAULT,'1640 Electra Blvd, Sidney', 'British Columbia', '(250) 953-7500', 'V8L 5V4');
    
INSERT INTO AIRPORT (AIRPORT_ID, A_ADDRESS, A_PROVINCE, A_PHONENUM,A_POSTALCODE )
    VALUES(DEFAULT,'2000 Wellington Ave, Winnipeg', 'Manitoba', '(204) 987-9402', 'TR3H 1C2');
    
INSERT INTO AIRPORT (AIRPORT_ID, A_ADDRESS, A_PROVINCE, A_PHONENUM,A_POSTALCODE )
    VALUES(DEFAULT,' 5201 Regina Ave #1, Regina,', 'Saskatchewan', '(306) 761-7555', 'S4W 1B3');
    
INSERT INTO AIRPORT (AIRPORT_ID, A_ADDRESS, A_PROVINCE, A_PHONENUM,A_POSTALCODE )
    VALUES(DEFAULT,'100 World Pkwy, St. John`s', 'Newfoundland and Labrador', '(709) 758-8500', 'A1A 5T2');
    
INSERT INTO AIRPORT (AIRPORT_ID, A_ADDRESS, A_PROVINCE, A_PHONENUM,A_POSTALCODE )
    VALUES(DEFAULT,'4180 Loch Lomond Rd', 'New Brunswick', '(506) 638-5555', 'E2N 1L7');
    
INSERT INTO AIRPORT (AIRPORT_ID, A_ADDRESS, A_PROVINCE, A_PHONENUM,A_POSTALCODE )
    VALUES(DEFAULT,'250 Maple Hills Ave, Charlottetown', 'PEI', '(902) 566-7997', 'C1C 1N2');
    
--Traveller
INSERT INTO TRAVELER (TRAVELER_ID, T_LNAME, T_FNAME, T_PHONENUM, T_ADDRESS)
    VALUES(DEFAULT, 'Alagos Eli', 'Alvin', '514-685-4792', '31 Spooner Street');
    
INSERT INTO TRAVELER (TRAVELER_ID, T_LNAME, T_FNAME, T_PHONENUM, T_ADDRESS)
    VALUES(DEFAULT, 'Powell Mckain', 'De Andre', '514-699-8753', '742 Evergreen Terrace');
    
INSERT INTO TRAVELER (TRAVELER_ID, T_LNAME, T_FNAME, T_PHONENUM, T_ADDRESS)
    VALUES(DEFAULT, 'Vovc', 'Alexandra', '514-797-9080', '1007 Mountain Drive');
    
INSERT INTO TRAVELER (TRAVELER_ID, T_LNAME, T_FNAME, T_PHONENUM, T_ADDRESS)
    VALUES(DEFAULT, 'Johnson', 'John', '438-346-2001', '1307 Sunnybrooke');
    
INSERT INTO TRAVELER (TRAVELER_ID, T_LNAME, T_FNAME, T_PHONENUM, T_ADDRESS)
    VALUES(DEFAULT, 'Anderson', 'Jake', '514-691-3294', '321 ave.dawson');
    
INSERT INTO TRAVELER (TRAVELER_ID, T_LNAME, T_FNAME, T_PHONENUM, T_ADDRESS)
    VALUES(DEFAULT, 'Parker', 'Drake', '438-928-5123', '123 Blue haven');
    
INSERT INTO TRAVELER (TRAVELER_ID, T_LNAME, T_FNAME, T_PHONENUM, T_ADDRESS)
    VALUES(DEFAULT, 'Tyson', 'Junior', '438-765-8457', '2345 Alexander St');
    
INSERT INTO TRAVELER (TRAVELER_ID, T_LNAME, T_FNAME, T_PHONENUM, T_ADDRESS)
    VALUES(DEFAULT, 'Cadore', 'Jason', '514-234-7654', '435 Boul. Gouin O');
    
INSERT INTO TRAVELER (TRAVELER_ID, T_LNAME, T_FNAME, T_PHONENUM, T_ADDRESS)
    VALUES(DEFAULT, 'Sorossa', 'Mary-Grace', '438-432-6345', '143 Gilmour St');
    
INSERT INTO TRAVELER (TRAVELER_ID, T_LNAME, T_FNAME, T_PHONENUM, T_ADDRESS)
    VALUES(DEFAULT, 'Alvarez' , 'Vanessa', '438-765-2123', '456 Radcliffe Rd');
    
--Airline
INSERT INTO AIRLINE (AIRLINE_ID, AL_COMPANY, AL_PHONENUM, AL_ADDRESS)
    VALUES(DEFAULT, 'WestJet', '1 (888) 937-8538', '800 Boulevard Stuart Graham S #110');
    
INSERT INTO AIRLINE (AIRLINE_ID, AL_COMPANY, AL_PHONENUM, AL_ADDRESS)
    VALUES(DEFAULT, 'AirCanada', '(514) 422-5000', '7373 Blvd. Cote-Vertu Ouest');
    
INSERT INTO AIRLINE (AIRLINE_ID, AL_COMPANY, AL_PHONENUM, AL_ADDRESS)
    VALUES(DEFAULT, 'Canadian North', '(613) 249-8880', '1000 Airport Parkway Private');
    
INSERT INTO AIRLINE (AIRLINE_ID, AL_COMPANY, AL_PHONENUM, AL_ADDRESS)
    VALUES(DEFAULT, 'Sunwing Airlines', '1 877-786-9464', '3105 Place Louis-R.-Renaud bureau 100');
    
INSERT INTO AIRLINE (AIRLINE_ID, AL_COMPANY, AL_PHONENUM, AL_ADDRESS)
    VALUES(DEFAULT, 'Swoop', '(587) 441-1001', '4311 12 St NE');
    
INSERT INTO AIRLINE (AIRLINE_ID, AL_COMPANY, AL_PHONENUM, AL_ADDRESS)
    VALUES(DEFAULT, 'Air North', '(780) 890-6882', '1164536 36th St E');
    
INSERT INTO AIRLINE (AIRLINE_ID, AL_COMPANY, AL_PHONENUM, AL_ADDRESS)
    VALUES(DEFAULT, 'Pacific Coastal Airlines', '1 800-663-2872', '4440 Cowley Crescent');
    
INSERT INTO AIRLINE (AIRLINE_ID, AL_COMPANY, AL_PHONENUM, AL_ADDRESS)
    VALUES(DEFAULT, 'Flair Airlines', '1 800-441-7214', '5795 Airport Way, Kelowna');
    
INSERT INTO AIRLINE (AIRLINE_ID, AL_COMPANY, AL_PHONENUM, AL_ADDRESS)
    VALUES(DEFAULT, 'Central Mountain Air', '(250) 847-5000', '6431 Airport Rd, Smithers');
    
INSERT INTO AIRLINE (AIRLINE_ID, AL_COMPANY, AL_PHONENUM, AL_ADDRESS)
    VALUES(DEFAULT, 'Air Inuit', '(867) 266-8946', '547 Avenue Meloche');
    
--Flight
INSERT INTO FLIGHT (FLIGHT_ID, F_ROUTE, F_TERMINALNUM, AIRLINE_ID)
    VALUES (DEFAULT, 'Manitoba, Ontario', '5', airline_flight_fk_sequence.NEXTVAL);
    
INSERT INTO FLIGHT (FLIGHT_ID, F_ROUTE, F_TERMINALNUM, AIRLINE_ID)
    VALUES (DEFAULT, 'Los Angeles, California', '2', airline_flight_fk_sequence.NEXTVAL);
    
INSERT INTO FLIGHT (FLIGHT_ID, F_ROUTE, F_TERMINALNUM, AIRLINE_ID)
    VALUES (DEFAULT, 'San Juan, Puerto Rico', '6', airline_flight_fk_sequence.NEXTVAL);
    
INSERT INTO FLIGHT (FLIGHT_ID, F_ROUTE, F_TERMINALNUM, AIRLINE_ID)
    VALUES (DEFAULT, 'Manila, Philipines', '4', airline_flight_fk_sequence.NEXTVAL);
    
INSERT INTO FLIGHT (FLIGHT_ID, F_ROUTE, F_TERMINALNUM, AIRLINE_ID)
    VALUES (DEFAULT, 'Congo, Africa', '3', airline_flight_fk_sequence.NEXTVAL);
    
INSERT INTO FLIGHT (FLIGHT_ID, F_ROUTE, F_TERMINALNUM, AIRLINE_ID)
    VALUES (DEFAULT, 'Sydney, Australia', '1', airline_flight_fk_sequence.NEXTVAL);
    
INSERT INTO FLIGHT (FLIGHT_ID, F_ROUTE, F_TERMINALNUM, AIRLINE_ID)
    VALUES (DEFAULT, 'Cancun, Mexcio', '7', airline_flight_fk_sequence.NEXTVAL);
    
INSERT INTO FLIGHT (FLIGHT_ID, F_ROUTE, F_TERMINALNUM, AIRLINE_ID)
    VALUES (DEFAULT, 'Paris, France', '11', airline_flight_fk_sequence.NEXTVAL);
    
INSERT INTO FLIGHT (FLIGHT_ID, F_ROUTE, F_TERMINALNUM, AIRLINE_ID)
    VALUES (DEFAULT, 'Tokyo, Japan', '9', airline_flight_fk_sequence.NEXTVAL);
    
INSERT INTO FLIGHT (FLIGHT_ID, F_ROUTE, F_TERMINALNUM, AIRLINE_ID)
    VALUES (DEFAULT, 'Tirana, Albania', '10', airline_flight_fk_sequence.NEXTVAL);
    
--Airplane
INSERT INTO AIRPLANE(PLANE_ID, A_CAPACITY, FLIGHT_ID, AIRLINE_ID)
    VALUES(DEFAULT, '400',flight_airplane_sequence.NEXTVAL, airline_airplane_fk_sequence.NEXTVAL); 
    
INSERT INTO AIRPLANE(PLANE_ID, A_CAPACITY, FLIGHT_ID, AIRLINE_ID)
    VALUES(DEFAULT, '499',flight_airplane_sequence.NEXTVAL, airline_airplane_fk_sequence.NEXTVAL); 
    
INSERT INTO AIRPLANE(PLANE_ID, A_CAPACITY, FLIGHT_ID, AIRLINE_ID)
    VALUES(DEFAULT, '200',flight_airplane_sequence.NEXTVAL, airline_airplane_fk_sequence.NEXTVAL);
    
INSERT INTO AIRPLANE(PLANE_ID, A_CAPACITY, FLIGHT_ID, AIRLINE_ID)
    VALUES(DEFAULT, '500',flight_airplane_sequence.NEXTVAL, airline_airplane_fk_sequence.NEXTVAL); 
    
INSERT INTO AIRPLANE(PLANE_ID, A_CAPACITY, FLIGHT_ID, AIRLINE_ID)
    VALUES(DEFAULT, '100',flight_airplane_sequence.NEXTVAL, airline_airplane_fk_sequence.NEXTVAL); 
    
INSERT INTO AIRPLANE(PLANE_ID, A_CAPACITY, FLIGHT_ID, AIRLINE_ID)
    VALUES(DEFAULT, '54',flight_airplane_sequence.NEXTVAL, airline_airplane_fk_sequence.NEXTVAL); 
    
INSERT INTO AIRPLANE(PLANE_ID, A_CAPACITY, FLIGHT_ID, AIRLINE_ID)
    VALUES(DEFAULT, '366',flight_airplane_sequence.NEXTVAL, airline_airplane_fk_sequence.NEXTVAL);
    
INSERT INTO AIRPLANE(PLANE_ID, A_CAPACITY, FLIGHT_ID, AIRLINE_ID)
    VALUES(DEFAULT, '231',flight_airplane_sequence.NEXTVAL, airline_airplane_fk_sequence.NEXTVAL); 
    
INSERT INTO AIRPLANE(PLANE_ID, A_CAPACITY, FLIGHT_ID, AIRLINE_ID)
    VALUES(DEFAULT, '143',flight_airplane_sequence.NEXTVAL, airline_airplane_fk_sequence.NEXTVAL); 
    
INSERT INTO AIRPLANE(PLANE_ID, A_CAPACITY, FLIGHT_ID, AIRLINE_ID)
    VALUES(DEFAULT, '421',flight_airplane_sequence.NEXTVAL, airline_airplane_fk_sequence.NEXTVAL); 
    
--Luggage
INSERT INTO LUGGAGE(LUGGAGE_ID, L_WEIGHT, L_NUMOFLUGGAGE, TRAVELER_ID, FLIGHT_ID)
    VALUES(DEFAULT, '20kg', '2', traveler_luggage_fk_sequence.NEXTVAL,flight_luggage_fk_sequence.NEXTVAL);

INSERT INTO LUGGAGE(LUGGAGE_ID, L_WEIGHT, L_NUMOFLUGGAGE, TRAVELER_ID, FLIGHT_ID)
    VALUES(DEFAULT, '40kg', '3', traveler_luggage_fk_sequence.NEXTVAL,flight_luggage_fk_sequence.NEXTVAL);
    
INSERT INTO LUGGAGE(LUGGAGE_ID, L_WEIGHT, L_NUMOFLUGGAGE, TRAVELER_ID, FLIGHT_ID)
    VALUES(DEFAULT, '15kg', '2', traveler_luggage_fk_sequence.NEXTVAL,flight_luggage_fk_sequence.NEXTVAL);
    
INSERT INTO LUGGAGE(LUGGAGE_ID, L_WEIGHT, L_NUMOFLUGGAGE, TRAVELER_ID, FLIGHT_ID)
    VALUES(DEFAULT, '5kg', '1', traveler_luggage_fk_sequence.NEXTVAL,flight_luggage_fk_sequence.NEXTVAL);
    
INSERT INTO LUGGAGE(LUGGAGE_ID, L_WEIGHT, L_NUMOFLUGGAGE, TRAVELER_ID, FLIGHT_ID)
    VALUES(DEFAULT, '0kg', '0', traveler_luggage_fk_sequence.NEXTVAL,flight_luggage_fk_sequence.NEXTVAL);
    
INSERT INTO LUGGAGE(LUGGAGE_ID, L_WEIGHT, L_NUMOFLUGGAGE, TRAVELER_ID, FLIGHT_ID)
    VALUES(DEFAULT, '18kg', '2', traveler_luggage_fk_sequence.NEXTVAL,flight_luggage_fk_sequence.NEXTVAL);
    
INSERT INTO LUGGAGE(LUGGAGE_ID, L_WEIGHT, L_NUMOFLUGGAGE, TRAVELER_ID, FLIGHT_ID)
    VALUES(DEFAULT, '9kg', '1', traveler_luggage_fk_sequence.NEXTVAL,flight_luggage_fk_sequence.NEXTVAL);
    
INSERT INTO LUGGAGE(LUGGAGE_ID, L_WEIGHT, L_NUMOFLUGGAGE, TRAVELER_ID, FLIGHT_ID)
    VALUES(DEFAULT, '30kg', '3', traveler_luggage_fk_sequence.NEXTVAL,flight_luggage_fk_sequence.NEXTVAL);
    
INSERT INTO LUGGAGE(LUGGAGE_ID, L_WEIGHT, L_NUMOFLUGGAGE, TRAVELER_ID, FLIGHT_ID)
    VALUES(DEFAULT, '12kg', '2', traveler_luggage_fk_sequence.NEXTVAL,flight_luggage_fk_sequence.NEXTVAL);
    
INSERT INTO LUGGAGE(LUGGAGE_ID, L_WEIGHT, L_NUMOFLUGGAGE, TRAVELER_ID, FLIGHT_ID)
    VALUES(DEFAULT, '2kg', '1', traveler_luggage_fk_sequence.NEXTVAL,flight_luggage_fk_sequence.NEXTVAL);

--Boarding pass
INSERT INTO BOARDINGPASS(B_BOARDINGPASS_ID, B_DATEISSUED, B_TRAVELDATE, B_CLASSTYPE, AIRPORT_ID, TRAVELER_ID)
    VALUES(DEFAULT, '2021-09-17', '2022-02-17', 'A', airport_boardingpass_fk_sequence.NEXTVAL, traveler_boardingpass_fk_sequence.NEXTVAL); 
    
INSERT INTO BOARDINGPASS(B_BOARDINGPASS_ID, B_DATEISSUED, B_TRAVELDATE, B_CLASSTYPE, AIRPORT_ID, TRAVELER_ID)
    VALUES(DEFAULT, '2020-12-24', '2021-06-03', 'A', airport_boardingpass_fk_sequence.NEXTVAL, traveler_boardingpass_fk_sequence.NEXTVAL);

INSERT INTO BOARDINGPASS(B_BOARDINGPASS_ID, B_DATEISSUED, B_TRAVELDATE, B_CLASSTYPE, AIRPORT_ID, TRAVELER_ID)
    VALUES(DEFAULT, '2021-01-02', '2021-12-29', 'A', airport_boardingpass_fk_sequence.NEXTVAL, traveler_boardingpass_fk_sequence.NEXTVAL); 
    
INSERT INTO BOARDINGPASS(B_BOARDINGPASS_ID, B_DATEISSUED, B_TRAVELDATE, B_CLASSTYPE, AIRPORT_ID, TRAVELER_ID)
    VALUES(DEFAULT, '2020-10-27', '2021-09-17', 'A', airport_boardingpass_fk_sequence.NEXTVAL, traveler_boardingpass_fk_sequence.NEXTVAL);
    
INSERT INTO BOARDINGPASS(B_BOARDINGPASS_ID, B_DATEISSUED, B_TRAVELDATE, B_CLASSTYPE, AIRPORT_ID, TRAVELER_ID)
    VALUES(DEFAULT, '2021-09-17', '2021-09-17', 'A', airport_boardingpass_fk_sequence.NEXTVAL, traveler_boardingpass_fk_sequence.NEXTVAL); 
    
INSERT INTO BOARDINGPASS(B_BOARDINGPASS_ID, B_DATEISSUED, B_TRAVELDATE, B_CLASSTYPE, AIRPORT_ID, TRAVELER_ID)
    VALUES(DEFAULT, '2021-09-17', '2021-09-17', 'A', airport_boardingpass_fk_sequence.NEXTVAL, traveler_boardingpass_fk_sequence.NEXTVAL);

INSERT INTO BOARDINGPASS(B_BOARDINGPASS_ID, B_DATEISSUED, B_TRAVELDATE, B_CLASSTYPE, AIRPORT_ID, TRAVELER_ID)
    VALUES(DEFAULT, '2021-09-17', '2021-09-17', 'A', airport_boardingpass_fk_sequence.NEXTVAL, traveler_boardingpass_fk_sequence.NEXTVAL); 
    
INSERT INTO BOARDINGPASS(B_BOARDINGPASS_ID, B_DATEISSUED, B_TRAVELDATE, B_CLASSTYPE, AIRPORT_ID, TRAVELER_ID)
    VALUES(DEFAULT, '2021-09-17', '2021-09-17', 'A', airport_boardingpass_fk_sequence.NEXTVAL, traveler_boardingpass_fk_sequence.NEXTVAL);

INSERT INTO BOARDINGPASS(B_BOARDINGPASS_ID, B_DATEISSUED, B_TRAVELDATE, B_CLASSTYPE, AIRPORT_ID, TRAVELER_ID)
    VALUES(DEFAULT, '2021-09-17', '2021-09-17', 'A', airport_boardingpass_fk_sequence.NEXTVAL, traveler_boardingpass_fk_sequence.NEXTVAL); 
    
INSERT INTO BOARDINGPASS(B_BOARDINGPASS_ID, B_DATEISSUED, B_TRAVELDATE, B_CLASSTYPE, AIRPORT_ID, TRAVELER_ID)
    VALUES(DEFAULT, '2021-09-17', '2021-09-17', 'A', airport_boardingpass_fk_sequence.NEXTVAL, traveler_boardingpass_fk_sequence.NEXTVAL);
    
--Hotel
INSERT INTO HOTEL(HOTEL_ID, H_ROOMNUM, H_ADDRESS, H_PHONENUM, TRAVELER_ID)
    VALUES(DEFAULT, '204', '800 Place Leigh Capreol, Dorval', '514-636-6700', traveler_hotel_fk_sequence.NEXTVAL); 
    
INSERT INTO HOTEL(HOTEL_ID, H_ROOMNUM, H_ADDRESS, H_PHONENUM, TRAVELER_ID)
    VALUES(DEFAULT, '312', '221 Carlingview Dr, Etobicoke', '416-675-3303', traveler_hotel_fk_sequence.NEXTVAL); 
    
INSERT INTO HOTEL(HOTEL_ID, H_ROOMNUM, H_ADDRESS, H_PHONENUM, TRAVELER_ID)
    VALUES(DEFAULT, '109', '2001 Airport Rd NE, Calgary', '403-291-2600', traveler_hotel_fk_sequence.NEXTVAL); 
    
INSERT INTO HOTEL(HOTEL_ID, H_ROOMNUM, H_ADDRESS, H_PHONENUM, TRAVELER_ID)
    VALUES(DEFAULT, '118', '40 Silver Dart Dr, Enfield', '902-334-0136', traveler_hotel_fk_sequence.NEXTVAL); 
    
INSERT INTO HOTEL(HOTEL_ID, H_ROOMNUM, H_ADDRESS, H_PHONENUM, TRAVELER_ID)
    VALUES(DEFAULT, '406', '140 Trans Canada Hwy, Duncan', '9', traveler_hotel_fk_sequence.NEXTVAL); 
    
INSERT INTO HOTEL(HOTEL_ID, H_ROOMNUM, H_ADDRESS, H_PHONENUM, TRAVELER_ID)
    VALUES(DEFAULT, '101', '1750 Sargent Ave, Winnipeg', '204-775-7263', traveler_hotel_fk_sequence.NEXTVAL); 
 
INSERT INTO HOTEL(HOTEL_ID, H_ROOMNUM, H_ADDRESS, H_PHONENUM, TRAVELER_ID)
    VALUES(DEFAULT, '109', '2651 Cameron St, Regina', '1-855-877-6363', traveler_hotel_fk_sequence.NEXTVAL); 
    
INSERT INTO HOTEL(HOTEL_ID, H_ROOMNUM, H_ADDRESS, H_PHONENUM, TRAVELER_ID)
    VALUES(DEFAULT, '18', '5 Cherrywood Dr, Happy Valley-Goose Bay', '709-896-4000', traveler_hotel_fk_sequence.NEXTVAL); 
    
INSERT INTO HOTEL(HOTEL_ID, H_ROOMNUM, H_ADDRESS, H_PHONENUM, TRAVELER_ID)
    VALUES(DEFAULT, '229', '2080 Hwy 61, Thunder Bay', '1-877-772-3297', traveler_hotel_fk_sequence.NEXTVAL); 
 
INSERT INTO HOTEL(HOTEL_ID, H_ROOMNUM, H_ADDRESS, H_PHONENUM, TRAVELER_ID)
    VALUES(DEFAULT, '238', '250 Brackley Point Rd, Charlottetown', '902-368-3727', traveler_hotel_fk_sequence.NEXTVAL); 
 
--Pilot
INSERT INTO PILOT(PILOT_ID, P_LNAME, P_FNAME, P_AGE, P_YEARSOFSERVICE, PLANE_ID)
    VALUES(DEFAULT, 'Smith', 'Teresa', '25', '2', plane_pilot_fk_sequence.NEXTVAL); 
    
INSERT INTO PILOT(PILOT_ID, P_LNAME, P_FNAME, P_AGE, P_YEARSOFSERVICE, PLANE_ID)
    VALUES(DEFAULT, 'Williams', 'Scott', '46', '23', plane_pilot_fk_sequence.NEXTVAL); 

INSERT INTO PILOT(PILOT_ID, P_LNAME, P_FNAME, P_AGE, P_YEARSOFSERVICE, PLANE_ID)
    VALUES(DEFAULT, 'Knight', 'Martin', '34', '2', plane_pilot_fk_sequence.NEXTVAL); 
    
INSERT INTO PILOT(PILOT_ID, P_LNAME, P_FNAME, P_AGE, P_YEARSOFSERVICE, PLANE_ID)
    VALUES(DEFAULT, 'James', 'Rose', '28', '7', plane_pilot_fk_sequence.NEXTVAL);     

INSERT INTO PILOT(PILOT_ID, P_LNAME, P_FNAME, P_AGE, P_YEARSOFSERVICE, PLANE_ID)
    VALUES(DEFAULT, 'Watson', 'Paul', '45', '102', plane_pilot_fk_sequence.NEXTVAL); 
    
INSERT INTO PILOT(PILOT_ID, P_LNAME, P_FNAME, P_AGE, P_YEARSOFSERVICE, PLANE_ID)
    VALUES(DEFAULT, 'Adams', 'Jones', '39', '15', plane_pilot_fk_sequence.NEXTVAL); 

INSERT INTO PILOT(PILOT_ID, P_LNAME, P_FNAME, P_AGE, P_YEARSOFSERVICE, PLANE_ID)
    VALUES(DEFAULT, 'Murray', 'Harold', '34', '12', plane_pilot_fk_sequence.NEXTVAL); 
    
INSERT INTO PILOT(PILOT_ID, P_LNAME, P_FNAME, P_AGE, P_YEARSOFSERVICE, PLANE_ID)
    VALUES(DEFAULT, 'Fisher', 'Albert', '23', '1', plane_pilot_fk_sequence.NEXTVAL); 

INSERT INTO PILOT(PILOT_ID, P_LNAME, P_FNAME, P_AGE, P_YEARSOFSERVICE, PLANE_ID)
    VALUES(DEFAULT, 'Johnson', 'Aaron', '27', '5', plane_pilot_fk_sequence.NEXTVAL); 
    
INSERT INTO PILOT(PILOT_ID, P_LNAME, P_FNAME, P_AGE, P_YEARSOFSERVICE, PLANE_ID)
    VALUES(DEFAULT, 'Lloyd', 'Diona', '26', '4', plane_pilot_fk_sequence.NEXTVAL); 
    
--Ticket
INSERT INTO TICKET(TICKET_ID, TRAVELER_ID, AIRLINE_ID, FLIGHT_ID)
    VALUES(DEFAULT, traveler_ticket_fk_sequence.NEXTVAL, airline_ticket_fk_sequence.NEXTVAL, flight_ticket_fk_sequence.NEXTVAL); 
    
INSERT INTO TICKET(TICKET_ID, TRAVELER_ID, AIRLINE_ID, FLIGHT_ID)
    VALUES(DEFAULT, traveler_ticket_fk_sequence.NEXTVAL, airline_ticket_fk_sequence.NEXTVAL, flight_ticket_fk_sequence.NEXTVAL); 
    
INSERT INTO TICKET(TICKET_ID, TRAVELER_ID, AIRLINE_ID, FLIGHT_ID)
    VALUES(DEFAULT, traveler_ticket_fk_sequence.NEXTVAL, airline_ticket_fk_sequence.NEXTVAL, flight_ticket_fk_sequence.NEXTVAL); 
    
INSERT INTO TICKET(TICKET_ID, TRAVELER_ID, AIRLINE_ID, FLIGHT_ID)
    VALUES(DEFAULT, traveler_ticket_fk_sequence.NEXTVAL, airline_ticket_fk_sequence.NEXTVAL, flight_ticket_fk_sequence.NEXTVAL); 
    
INSERT INTO TICKET(TICKET_ID, TRAVELER_ID, AIRLINE_ID, FLIGHT_ID)
    VALUES(DEFAULT, traveler_ticket_fk_sequence.NEXTVAL, airline_ticket_fk_sequence.NEXTVAL, flight_ticket_fk_sequence.NEXTVAL); 
    
INSERT INTO TICKET(TICKET_ID, TRAVELER_ID, AIRLINE_ID, FLIGHT_ID)
    VALUES(DEFAULT, traveler_ticket_fk_sequence.NEXTVAL, airline_ticket_fk_sequence.NEXTVAL, flight_ticket_fk_sequence.NEXTVAL); 
    
INSERT INTO TICKET(TICKET_ID, TRAVELER_ID, AIRLINE_ID, FLIGHT_ID)
    VALUES(DEFAULT, traveler_ticket_fk_sequence.NEXTVAL, airline_ticket_fk_sequence.NEXTVAL, flight_ticket_fk_sequence.NEXTVAL); 
    
INSERT INTO TICKET(TICKET_ID, TRAVELER_ID, AIRLINE_ID, FLIGHT_ID)
    VALUES(DEFAULT, traveler_ticket_fk_sequence.NEXTVAL, airline_ticket_fk_sequence.NEXTVAL, flight_ticket_fk_sequence.NEXTVAL); 
    
INSERT INTO TICKET(TICKET_ID, TRAVELER_ID, AIRLINE_ID, FLIGHT_ID)
    VALUES(DEFAULT, traveler_ticket_fk_sequence.NEXTVAL, airline_ticket_fk_sequence.NEXTVAL, flight_ticket_fk_sequence.NEXTVAL); 
    
INSERT INTO TICKET(TICKET_ID, TRAVELER_ID, AIRLINE_ID, FLIGHT_ID)
    VALUES(DEFAULT, traveler_ticket_fk_sequence.NEXTVAL, airline_ticket_fk_sequence.NEXTVAL, flight_ticket_fk_sequence.NEXTVAL); 
    
--Airport agent
INSERT INTO AIRPORTAGENT(AIRPORTAGENT_ID, AA_LNAME, AA_FNAME, TICKET_ID, AIRPORT_ID)
    VALUES(DEFAULT, 'Cook', 'Paul', ticket_agent_fk_sequence.NEXTVAL, airport_agent_fk_sequence.NEXTVAL); 

INSERT INTO AIRPORTAGENT(AIRPORTAGENT_ID, AA_LNAME, AA_FNAME, TICKET_ID, AIRPORT_ID)
    VALUES(DEFAULT, 'Cooper', 'Conner', ticket_agent_fk_sequence.NEXTVAL, airport_agent_fk_sequence.NEXTVAL); 

INSERT INTO AIRPORTAGENT(AIRPORTAGENT_ID, AA_LNAME, AA_FNAME, TICKET_ID, AIRPORT_ID)
    VALUES(DEFAULT, 'Bailey', 'Danna', ticket_agent_fk_sequence.NEXTVAL, airport_agent_fk_sequence.NEXTVAL); 

INSERT INTO AIRPORTAGENT(AIRPORTAGENT_ID, AA_LNAME, AA_FNAME, TICKET_ID, AIRPORT_ID)
    VALUES(DEFAULT, 'Lee', 'Alice', ticket_agent_fk_sequence.NEXTVAL, airport_agent_fk_sequence.NEXTVAL); 

INSERT INTO AIRPORTAGENT(AIRPORTAGENT_ID, AA_LNAME, AA_FNAME, TICKET_ID, AIRPORT_ID)
    VALUES(DEFAULT, 'Palmer', 'Luisa', ticket_agent_fk_sequence.NEXTVAL, airport_agent_fk_sequence.NEXTVAL); 

INSERT INTO AIRPORTAGENT(AIRPORTAGENT_ID, AA_LNAME, AA_FNAME, TICKET_ID, AIRPORT_ID)
    VALUES(DEFAULT, 'Harvey', 'Adrian', ticket_agent_fk_sequence.NEXTVAL, airport_agent_fk_sequence.NEXTVAL); 

INSERT INTO AIRPORTAGENT(AIRPORTAGENT_ID, AA_LNAME, AA_FNAME, TICKET_ID, AIRPORT_ID)
    VALUES(DEFAULT, 'Jackson', 'Nicole', ticket_agent_fk_sequence.NEXTVAL, airport_agent_fk_sequence.NEXTVAL); 

INSERT INTO AIRPORTAGENT(AIRPORTAGENT_ID, AA_LNAME, AA_FNAME, TICKET_ID, AIRPORT_ID)
    VALUES(DEFAULT, 'Patel', 'Gerald', ticket_agent_fk_sequence.NEXTVAL, airport_agent_fk_sequence.NEXTVAL); 

INSERT INTO AIRPORTAGENT(AIRPORTAGENT_ID, AA_LNAME, AA_FNAME, TICKET_ID, AIRPORT_ID)
    VALUES(DEFAULT, 'Stevens', 'Paul', ticket_agent_fk_sequence.NEXTVAL, airport_agent_fk_sequence.NEXTVAL); 

INSERT INTO AIRPORTAGENT(AIRPORTAGENT_ID, AA_LNAME, AA_FNAME, TICKET_ID, AIRPORT_ID)
    VALUES(DEFAULT, 'Fisher', 'Carlos', ticket_agent_fk_sequence.NEXTVAL, airport_agent_fk_sequence.NEXTVAL); 