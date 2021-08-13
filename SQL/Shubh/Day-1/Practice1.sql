--Practice-1
--Write a SQL statement to create a table named countries including columns CountryId, CountryName and RegionId and make sure that no countries except Italy, India and China will be entered in the table. and combination of columns CountryId and RegionId will be unique.


CREATE TABLE countries (
COUNTRY_ID varchar(10) NOT NULL UNIQUE DEFAULT '',
COUNTRY_NAME varchar(40) UNIQUE NULL CHECK(COUNTRY_NAME IN('Italy','India','China')) ,
REGION_ID varchar(2) UNIQUE NOT NULL,
PRIMARY KEY (COUNTRY_ID,REGION_ID));

insert into countries (COUNTRY_ID, COUNTRY_NAME, REGION_ID) VALUES (1, 'India', 5);
insert into countries (COUNTRY_ID, COUNTRY_NAME, REGION_ID) VALUES (2, 'iTALY', 3);


SELECT * FROM countrieS