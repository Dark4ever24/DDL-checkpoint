CREATE TABLE Product (
    Product_id VARCHAR2(20) CONSTRAINT pk_product PRIMARY KEY , 
    Product_Name VARCHAR2(20) CONSTRAINT nt_product NOT NULL,
    Price NUMBER CONSTRAINT ck_product CHECK (positive value) 
    );

CREATE TABLE Customer (
    Customer_id VARCHAR2(20) CONSTRAINT pk_customer PRIMARY KEY, 
    Customer_Name VARCHAR2(20) CONSTRAINT nt_customer NOT NULL , 
    Customer_Tel NUMBER 
    );

CREATE TABLE Orders ( 
      Quantity Number ,
      Product_id VARCHAR2 (20) ,
      Product_id VARCHAR2 (20) , 
      Total_amount NUMBER ,
    CONSTRAINT fk_orders FOREIGN KEY (Costumer_id) REFERENCES Customer (Costumer_id),
    CONSTRAINT fk_orders FOREIGN KEY (Product_id) REFERENCES Product (Product_id), 
    );

--!Add a column Category (VARCHAR2(20)) to the PRODUCT table. 

ALTER TABLE Product ADD Category (VARCHAR2(20);

--!Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value.

ALTER TABLE Orders ADD OrderDate (DATE) DEFAULT SYSDATE;
