create table member
 ( userid VARCHAR2(10) PRIMARY KEY,
   passwd VARCHAR2(10) NOT NULL,
   username VARCHAR2(10) NOT NULL,
   post VARCHAR2(6) NOT NULL,
   addr1 VARCHAR2(500) NOT NULL,
   addr2 VARCHAR2(500) NOT NULL,
   phone1 VARCHAR2(3) NOT NULL,
   
   email1 VARCHAR2(20) NOT NULL,
   email2 VARCHAR2(20) NOT NULL );