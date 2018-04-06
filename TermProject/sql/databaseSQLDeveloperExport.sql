--------------------------------------------------------
--  File created - Tuesday-February-27-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADDRESS
--------------------------------------------------------

  CREATE TABLE "ADDRESS" 
   (	"ADDRESS_ID" NUMBER(10,0), 
	"STREET_LINE_1" VARCHAR2(255 BYTE), 
	"STREET_LINE_2" VARCHAR2(255 BYTE), 
	"CITY" VARCHAR2(255 BYTE), 
	"STATE" VARCHAR2(255 BYTE), 
	"COUNTRY" VARCHAR2(255 BYTE), 
	"POSTAL_CODE" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Table CATAGORY
--------------------------------------------------------

  CREATE TABLE "CATAGORY" 
   (	"CATAGORY_ID" NUMBER(10,0), 
	"CATAGORY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "CUSTOMER" 
   (	"CUSTOMER_ID" NUMBER(10,0), 
	"USERNAME" VARCHAR2(255 BYTE), 
	"FIRST_NAME" VARCHAR2(255 BYTE), 
	"LAST_NAME" VARCHAR2(255 BYTE), 
	"PHONE_NUMBER" NUMBER(10,0), 
	"ADDRESS_ID" NUMBER(10,0), 
	"EMAIL" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Table INVENTORY
--------------------------------------------------------

  CREATE TABLE "INVENTORY" 
   (	"ITEM_SKU" NUMBER(10,0), 
	"WAREHOUSE_ID" NUMBER(10,0), 
	"QUANITY" NUMBER(10,0), 
	"SELLER_ID" NUMBER(10,0), 
	"SECTION" VARCHAR2(255 BYTE), 
	"LOC" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

  CREATE TABLE "ORDERS" 
   (	"ORDER_ID" NUMBER(10,0), 
	"PRICE" NUMBER(12,2), 
	"ITEM_SKU" NUMBER(10,0), 
	"CUSTOMER_ID" NUMBER(10,0), 
	"QUANTITY" NUMBER(10,0), 
	"SHIP_METHOD" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "PRODUCT" 
   (	"ITEM_SKU" NUMBER(10,0), 
	"NAME" VARCHAR2(255 BYTE), 
	"DESCRIPTION" VARCHAR2(255 BYTE), 
	"PRICE" NUMBER(12,2), 
	"PRODUCT_CATAGORY" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Table SELLER
--------------------------------------------------------

  CREATE TABLE "SELLER" 
   (	"SELLER_ID" NUMBER(10,0), 
	"ADDRESS_ID" NUMBER(10,0), 
	"USERNAME" VARCHAR2(255 BYTE), 
	"FIRST_NAME" VARCHAR2(255 BYTE), 
	"LAST_NAME" VARCHAR2(255 BYTE), 
	"PHONE_NUMBER" NUMBER(10,0), 
	"EMAIL" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Table SHIPMENT
--------------------------------------------------------

  CREATE TABLE "SHIPMENT" 
   (	"SHIPMENT_ID" NUMBER(10,0), 
	"SHIP_METHOD_ID" NUMBER(10,0), 
	"ORDER_ID" NUMBER(10,0), 
	"WAREHOUSE_ID" NUMBER(10,0), 
	"CUSTOMER_ID" NUMBER(10,0), 
	"ADDRESS_ID" NUMBER(10,0), 
	"TRACKING_NUMBER" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Table SHIPMETHOD
--------------------------------------------------------

  CREATE TABLE "SHIPMETHOD" 
   (	"SHIP_METHOD_ID" NUMBER(10,0), 
	"SHIPPING_SPEED" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Table WAREHOUSE
--------------------------------------------------------

  CREATE TABLE "WAREHOUSE" 
   (	"WAREHOUSE_ID" NUMBER(10,0), 
	"NAME" VARCHAR2(255 BYTE), 
	"ADDRESS_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
REM INSERTING into ADDRESS
SET DEFINE OFF;
Insert into ADDRESS (ADDRESS_ID,STREET_LINE_1,STREET_LINE_2,CITY,STATE,COUNTRY,POSTAL_CODE) values (1,'75 state road',null,'Baldwinville','Massachusetts','USA','01436');
Insert into ADDRESS (ADDRESS_ID,STREET_LINE_1,STREET_LINE_2,CITY,STATE,COUNTRY,POSTAL_CODE) values (2,'1 Bob Road','apt 2','millwalkee','Tennessee','USA','00102');
Insert into ADDRESS (ADDRESS_ID,STREET_LINE_1,STREET_LINE_2,CITY,STATE,COUNTRY,POSTAL_CODE) values (3,'80 Barrett Street','C6','Northampton','Massachusetts','USA','01060');
Insert into ADDRESS (ADDRESS_ID,STREET_LINE_1,STREET_LINE_2,CITY,STATE,COUNTRY,POSTAL_CODE) values (4,'40 test road',null,'testTown','TestCity','USA','00000');
Insert into ADDRESS (ADDRESS_ID,STREET_LINE_1,STREET_LINE_2,CITY,STATE,COUNTRY,POSTAL_CODE) values (5,'1 temple Road',null,'Dalas','Texas','USA','10001');
Insert into ADDRESS (ADDRESS_ID,STREET_LINE_1,STREET_LINE_2,CITY,STATE,COUNTRY,POSTAL_CODE) values (6,'50 Industrial Drive','Suite 102','Northampton','Massachusetts','USA','01060');
Insert into ADDRESS (ADDRESS_ID,STREET_LINE_1,STREET_LINE_2,CITY,STATE,COUNTRY,POSTAL_CODE) values (7,'505 running road','unit 2','Boston','Massachusetts','USA','02304');
Insert into ADDRESS (ADDRESS_ID,STREET_LINE_1,STREET_LINE_2,CITY,STATE,COUNTRY,POSTAL_CODE) values (8,'404 Error Drive',null,'Chippawa','Illinos','USA','08050');
Insert into ADDRESS (ADDRESS_ID,STREET_LINE_1,STREET_LINE_2,CITY,STATE,COUNTRY,POSTAL_CODE) values (9,'34 Ascot lane',null,'Worcester','Ohio','USA','54230');
REM INSERTING into CATAGORY
SET DEFINE OFF;
Insert into CATAGORY (CATAGORY_ID,CATAGORY) values (1,'Electronics');
Insert into CATAGORY (CATAGORY_ID,CATAGORY) values (2,'Home Goods');
Insert into CATAGORY (CATAGORY_ID,CATAGORY) values (3,'Men''s Clothing');
Insert into CATAGORY (CATAGORY_ID,CATAGORY) values (4,'Women''s Clothing');
Insert into CATAGORY (CATAGORY_ID,CATAGORY) values (5,'Outdoors');
Insert into CATAGORY (CATAGORY_ID,CATAGORY) values (6,'Tools and Hardware');
Insert into CATAGORY (CATAGORY_ID,CATAGORY) values (7,'children''s Clothing');
Insert into CATAGORY (CATAGORY_ID,CATAGORY) values (8,'Health and Beauty');
Insert into CATAGORY (CATAGORY_ID,CATAGORY) values (9,'Computers');
REM INSERTING into CUSTOMER
SET DEFINE OFF;
Insert into CUSTOMER (CUSTOMER_ID,USERNAME,FIRST_NAME,LAST_NAME,PHONE_NUMBER,ADDRESS_ID,EMAIL) values (1,'pwaite','Patrick','Waite',5555555555,3,'pwaite@bu.edu');
Insert into CUSTOMER (CUSTOMER_ID,USERNAME,FIRST_NAME,LAST_NAME,PHONE_NUMBER,ADDRESS_ID,EMAIL) values (2,'cchanning','Carter','Channing',1234567890,8,'cchanning@email.com');
Insert into CUSTOMER (CUSTOMER_ID,USERNAME,FIRST_NAME,LAST_NAME,PHONE_NUMBER,ADDRESS_ID,EMAIL) values (3,'dEmerson','Delaney','Emerson',9876543210,9,'demerson@email.net');
Insert into CUSTOMER (CUSTOMER_ID,USERNAME,FIRST_NAME,LAST_NAME,PHONE_NUMBER,ADDRESS_ID,EMAIL) values (4,'bchanning','Bob','Channing',1234567890,8,'bchanning@email.com');
Insert into CUSTOMER (CUSTOMER_ID,USERNAME,FIRST_NAME,LAST_NAME,PHONE_NUMBER,ADDRESS_ID,EMAIL) values (5,'cEmerson','Chris','Emerson',9876543210,9,'cemerson@email.net');
Insert into CUSTOMER (CUSTOMER_ID,USERNAME,FIRST_NAME,LAST_NAME,PHONE_NUMBER,ADDRESS_ID,EMAIL) values (6,'BarbraChan','Barbra','Channing',9876543210,9,'barbChn@email.net');
Insert into CUSTOMER (CUSTOMER_ID,USERNAME,FIRST_NAME,LAST_NAME,PHONE_NUMBER,ADDRESS_ID,EMAIL) values (7,'dMonEmmerson','Demoin','Emerson',9876543210,9,'example@email.net');
Insert into CUSTOMER (CUSTOMER_ID,USERNAME,FIRST_NAME,LAST_NAME,PHONE_NUMBER,ADDRESS_ID,EMAIL) values (8,'EmerVic','Victor','Emerson',9876543210,9,'example@email.net');
REM INSERTING into INVENTORY
SET DEFINE OFF;
Insert into INVENTORY (ITEM_SKU,WAREHOUSE_ID,QUANITY,SELLER_ID,SECTION,LOC) values (1001,2,5,2,'GR','S210');
Insert into INVENTORY (ITEM_SKU,WAREHOUSE_ID,QUANITY,SELLER_ID,SECTION,LOC) values (1002,3,8,2,'TFB','501');
Insert into INVENTORY (ITEM_SKU,WAREHOUSE_ID,QUANITY,SELLER_ID,SECTION,LOC) values (1003,1,46,3,'hr','s210');
Insert into INVENTORY (ITEM_SKU,WAREHOUSE_ID,QUANITY,SELLER_ID,SECTION,LOC) values (1004,3,10,3,'ter','200');
REM INSERTING into ORDERS
SET DEFINE OFF;
Insert into ORDERS (ORDER_ID,PRICE,ITEM_SKU,CUSTOMER_ID,QUANTITY,SHIP_METHOD) values (2,22.5,1002,3,1,2);
Insert into ORDERS (ORDER_ID,PRICE,ITEM_SKU,CUSTOMER_ID,QUANTITY,SHIP_METHOD) values (3,19.85,1001,1,1,2);
Insert into ORDERS (ORDER_ID,PRICE,ITEM_SKU,CUSTOMER_ID,QUANTITY,SHIP_METHOD) values (4,19.85,1001,3,1,1);
Insert into ORDERS (ORDER_ID,PRICE,ITEM_SKU,CUSTOMER_ID,QUANTITY,SHIP_METHOD) values (5,19.85,1001,4,1,3);
Insert into ORDERS (ORDER_ID,PRICE,ITEM_SKU,CUSTOMER_ID,QUANTITY,SHIP_METHOD) values (1,39.7,1001,2,2,4);
REM INSERTING into PRODUCT
SET DEFINE OFF;
Insert into PRODUCT (ITEM_SKU,NAME,DESCRIPTION,PRICE,PRODUCT_CATAGORY) values (1001,'Floating Lamp','A lamp that floats in the air rather than rests on the desk',19.85,2);
Insert into PRODUCT (ITEM_SKU,NAME,DESCRIPTION,PRICE,PRODUCT_CATAGORY) values (1002,'Throwable Camera','allows a photographer to throw the camera to take pictures mid-flight',22.5,1);
Insert into PRODUCT (ITEM_SKU,NAME,DESCRIPTION,PRICE,PRODUCT_CATAGORY) values (1003,'deck chair','A chair for the outdoor deck',38.6,2);
Insert into PRODUCT (ITEM_SKU,NAME,DESCRIPTION,PRICE,PRODUCT_CATAGORY) values (1004,'computer mouse','a desk rodent used to move the pointer on screen',19.43,1);
Insert into PRODUCT (ITEM_SKU,NAME,DESCRIPTION,PRICE,PRODUCT_CATAGORY) values (1005,'Keyboard','used to type and interact with the computer',21.13,1);
Insert into PRODUCT (ITEM_SKU,NAME,DESCRIPTION,PRICE,PRODUCT_CATAGORY) values (1006,'camera lens','f-stop 55-108mm cameral lens',25,1);
Insert into PRODUCT (ITEM_SKU,NAME,DESCRIPTION,PRICE,PRODUCT_CATAGORY) values (1007,'tables','used to place things atop',85,2);
Insert into PRODUCT (ITEM_SKU,NAME,DESCRIPTION,PRICE,PRODUCT_CATAGORY) values (1008,'computer tower','has all the nuts and bolts to move at over 1000 jigawatts',149,1);
Insert into PRODUCT (ITEM_SKU,NAME,DESCRIPTION,PRICE,PRODUCT_CATAGORY) values (1009,'glassware','used to drink all sorts of liquid based drinks',13.78,2);
REM INSERTING into SELLER
SET DEFINE OFF;
Insert into SELLER (SELLER_ID,ADDRESS_ID,USERNAME,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL) values (1,1,'testUser','test','user',9999999999,'example@example.com');
Insert into SELLER (SELLER_ID,ADDRESS_ID,USERNAME,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL) values (2,2,'sueDer','Sue','Der',1111111111,'sueDer@gemail.com');
Insert into SELLER (SELLER_ID,ADDRESS_ID,USERNAME,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL) values (3,3,'pwaite','Patrick','Waite',5555555555,'pwaite@bu.edu');
Insert into SELLER (SELLER_ID,ADDRESS_ID,USERNAME,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL) values (4,1,'testUser','test','user',9999999999,'example@example.com');
Insert into SELLER (SELLER_ID,ADDRESS_ID,USERNAME,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL) values (5,2,'sueDer','Sue','Der',1111111111,'sueDer@gemail.com');
Insert into SELLER (SELLER_ID,ADDRESS_ID,USERNAME,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL) values (6,3,'pwaite','Patrick','Waite',5555555555,'pwaite@bu.edu');
REM INSERTING into SHIPMENT
SET DEFINE OFF;
Insert into SHIPMENT (SHIPMENT_ID,SHIP_METHOD_ID,ORDER_ID,WAREHOUSE_ID,CUSTOMER_ID,ADDRESS_ID,TRACKING_NUMBER) values (1,2,3,2,1,3,'2304 5083 9302');
Insert into SHIPMENT (SHIPMENT_ID,SHIP_METHOD_ID,ORDER_ID,WAREHOUSE_ID,CUSTOMER_ID,ADDRESS_ID,TRACKING_NUMBER) values (2,4,1,2,2,8,'2345 1256 7345');
Insert into SHIPMENT (SHIPMENT_ID,SHIP_METHOD_ID,ORDER_ID,WAREHOUSE_ID,CUSTOMER_ID,ADDRESS_ID,TRACKING_NUMBER) values (3,2,2,3,3,9,'Z808F F080E0 802JJS0');
Insert into SHIPMENT (SHIPMENT_ID,SHIP_METHOD_ID,ORDER_ID,WAREHOUSE_ID,CUSTOMER_ID,ADDRESS_ID,TRACKING_NUMBER) values (4,4,1,2,2,8,'z23874-890-84325-8484');
Insert into SHIPMENT (SHIPMENT_ID,SHIP_METHOD_ID,ORDER_ID,WAREHOUSE_ID,CUSTOMER_ID,ADDRESS_ID,TRACKING_NUMBER) values (5,2,2,3,3,9,'DHL489570927890');
Insert into SHIPMENT (SHIPMENT_ID,SHIP_METHOD_ID,ORDER_ID,WAREHOUSE_ID,CUSTOMER_ID,ADDRESS_ID,TRACKING_NUMBER) values (6,4,1,2,2,8,'4325235324');
Insert into SHIPMENT (SHIPMENT_ID,SHIP_METHOD_ID,ORDER_ID,WAREHOUSE_ID,CUSTOMER_ID,ADDRESS_ID,TRACKING_NUMBER) values (7,2,2,3,3,9,'cer424q342534543');
REM INSERTING into SHIPMETHOD
SET DEFINE OFF;
Insert into SHIPMETHOD (SHIP_METHOD_ID,SHIPPING_SPEED) values (1,'super saver shipping');
Insert into SHIPMETHOD (SHIP_METHOD_ID,SHIPPING_SPEED) values (2,'Standard Shipping');
Insert into SHIPMETHOD (SHIP_METHOD_ID,SHIPPING_SPEED) values (3,'Two-Day Shipping');
Insert into SHIPMETHOD (SHIP_METHOD_ID,SHIPPING_SPEED) values (4,'One-Day Shipping');
REM INSERTING into WAREHOUSE
SET DEFINE OFF;
Insert into WAREHOUSE (WAREHOUSE_ID,NAME,ADDRESS_ID) values (1,'AMZ Warehouse 1',4);
Insert into WAREHOUSE (WAREHOUSE_ID,NAME,ADDRESS_ID) values (2,'QuickSale StockRoom',5);
Insert into WAREHOUSE (WAREHOUSE_ID,NAME,ADDRESS_ID) values (3,'test Warehouse',3);
Insert into WAREHOUSE (WAREHOUSE_ID,NAME,ADDRESS_ID) values (4,'AMZ Warehouse 1',4);
Insert into WAREHOUSE (WAREHOUSE_ID,NAME,ADDRESS_ID) values (5,'QuickSale StockRoom',5);
Insert into WAREHOUSE (WAREHOUSE_ID,NAME,ADDRESS_ID) values (6,'test Warehouse',3);
Insert into WAREHOUSE (WAREHOUSE_ID,NAME,ADDRESS_ID) values (7,'AMZ Warehouse 1',4);
Insert into WAREHOUSE (WAREHOUSE_ID,NAME,ADDRESS_ID) values (8,'QuickSale StockRoom',5);
Insert into WAREHOUSE (WAREHOUSE_ID,NAME,ADDRESS_ID) values (9,'test Warehouse',3);
--------------------------------------------------------
--  DDL for Index ITEM_NAME_INDEX
--------------------------------------------------------

  CREATE INDEX "ITEM_NAME_INDEX" ON "PRODUCT" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Index PK_INVENTORY_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_INVENTORY_ID" ON "INVENTORY" ("ITEM_SKU", "WAREHOUSE_ID", "SECTION", "LOC") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Index PK_ORDERS
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ORDERS" ON "ORDERS" ("ORDER_ID", "CUSTOMER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Index SYS_C0010059
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0010059" ON "PRODUCT" ("ITEM_SKU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Index SYS_C0010061
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0010061" ON "WAREHOUSE" ("WAREHOUSE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Index SYS_C0010063
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0010063" ON "ADDRESS" ("ADDRESS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Index SYS_C0010065
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0010065" ON "SELLER" ("SELLER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Index SYS_C0010067
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0010067" ON "CATAGORY" ("CATAGORY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Index SYS_C0010071
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0010071" ON "CUSTOMER" ("CUSTOMER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Index SYS_C0010073
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0010073" ON "SHIPMETHOD" ("SHIP_METHOD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  DDL for Index SYS_C0010075
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0010075" ON "SHIPMENT" ("SHIPMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
/
--------------------------------------------------------
--  Constraints for Table ADDRESS
--------------------------------------------------------

  ALTER TABLE "ADDRESS" ADD PRIMARY KEY ("ADDRESS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ADDRESS" MODIFY ("ADDRESS_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table CATAGORY
--------------------------------------------------------

  ALTER TABLE "CATAGORY" ADD PRIMARY KEY ("CATAGORY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "CATAGORY" MODIFY ("CATAGORY_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "CUSTOMER" ADD PRIMARY KEY ("CUSTOMER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "CUSTOMER" MODIFY ("CUSTOMER_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table INVENTORY
--------------------------------------------------------

  ALTER TABLE "INVENTORY" ADD CONSTRAINT "PK_INVENTORY_ID" PRIMARY KEY ("ITEM_SKU", "WAREHOUSE_ID", "SECTION", "LOC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
/
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "ORDERS" ADD CONSTRAINT "PK_ORDERS" PRIMARY KEY ("ORDER_ID", "CUSTOMER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ORDERS" MODIFY ("ORDER_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "PRODUCT" ADD PRIMARY KEY ("ITEM_SKU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRODUCT" MODIFY ("ITEM_SKU" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table SELLER
--------------------------------------------------------

  ALTER TABLE "SELLER" ADD PRIMARY KEY ("SELLER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SELLER" MODIFY ("SELLER_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table SHIPMENT
--------------------------------------------------------

  ALTER TABLE "SHIPMENT" ADD PRIMARY KEY ("SHIPMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SHIPMENT" MODIFY ("SHIPMENT_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table SHIPMETHOD
--------------------------------------------------------

  ALTER TABLE "SHIPMETHOD" ADD PRIMARY KEY ("SHIP_METHOD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SHIPMETHOD" MODIFY ("SHIP_METHOD_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Constraints for Table WAREHOUSE
--------------------------------------------------------

  ALTER TABLE "WAREHOUSE" ADD PRIMARY KEY ("WAREHOUSE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "WAREHOUSE" MODIFY ("WAREHOUSE_ID" NOT NULL ENABLE);
/
--------------------------------------------------------
--  Ref Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "CUSTOMER" ADD CONSTRAINT "CUS_ADDRESS_FK" FOREIGN KEY ("ADDRESS_ID")
	  REFERENCES "ADDRESS" ("ADDRESS_ID") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table INVENTORY
--------------------------------------------------------

  ALTER TABLE "INVENTORY" ADD CONSTRAINT "INV_ITEM_SKU_FK" FOREIGN KEY ("ITEM_SKU")
	  REFERENCES "PRODUCT" ("ITEM_SKU") ENABLE;
  ALTER TABLE "INVENTORY" ADD CONSTRAINT "INV_SELLER_ID_FK" FOREIGN KEY ("SELLER_ID")
	  REFERENCES "SELLER" ("SELLER_ID") ENABLE;
  ALTER TABLE "INVENTORY" ADD CONSTRAINT "INV_WAREHOUSE_ID_FK" FOREIGN KEY ("WAREHOUSE_ID")
	  REFERENCES "WAREHOUSE" ("WAREHOUSE_ID") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE "ORDERS" ADD CONSTRAINT "ORDER_CUSTOMER_ID_FK" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "CUSTOMER" ("CUSTOMER_ID") ENABLE;
  ALTER TABLE "ORDERS" ADD CONSTRAINT "ORDER_ITEM_SKU_FK" FOREIGN KEY ("ITEM_SKU")
	  REFERENCES "PRODUCT" ("ITEM_SKU") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "PRODUCT" ADD CONSTRAINT "PRODUCT_CATAGORY_FK" FOREIGN KEY ("PRODUCT_CATAGORY")
	  REFERENCES "CATAGORY" ("CATAGORY_ID") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table SELLER
--------------------------------------------------------

  ALTER TABLE "SELLER" ADD CONSTRAINT "SLLR_ADDRESS_ID_FK" FOREIGN KEY ("ADDRESS_ID")
	  REFERENCES "ADDRESS" ("ADDRESS_ID") ENABLE;
/
--------------------------------------------------------
--  Ref Constraints for Table SHIPMENT
--------------------------------------------------------

  ALTER TABLE "SHIPMENT" ADD CONSTRAINT "SHPMNT_ADDRESS_ID_FK" FOREIGN KEY ("ADDRESS_ID")
	  REFERENCES "ADDRESS" ("ADDRESS_ID") ENABLE;
  ALTER TABLE "SHIPMENT" ADD CONSTRAINT "SHPMNT_CUSTOMER_ID_FK" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "CUSTOMER" ("CUSTOMER_ID") ENABLE;
  ALTER TABLE "SHIPMENT" ADD CONSTRAINT "SHPMNT_ORDER_ID_FK" FOREIGN KEY ("ORDER_ID", "CUSTOMER_ID")
	  REFERENCES "ORDERS" ("ORDER_ID", "CUSTOMER_ID") ENABLE;
  ALTER TABLE "SHIPMENT" ADD CONSTRAINT "SHPMNT_SHIP_METHOD_ID_FK" FOREIGN KEY ("SHIP_METHOD_ID")
	  REFERENCES "SHIPMETHOD" ("SHIP_METHOD_ID") ENABLE;
  ALTER TABLE "SHIPMENT" ADD CONSTRAINT "SHPMNT_WAREHOUSE_ID_FK" FOREIGN KEY ("WAREHOUSE_ID")
	  REFERENCES "WAREHOUSE" ("WAREHOUSE_ID") ENABLE;
/
--------------------------------------------------------
--  DDL for Procedure ADD_CUSTOMER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "ADD_CUSTOMER" ( --Create a new customer
   cus_id_arg IN number, -- The new customer ID 
   username_arg IN varchar, --USERNAME
   first_name_arg IN varchar, -- The new customer’s first name
   last_name_arg IN varchar,
   phone_number_arg in number,
   address_id_arg in number,
   email_arg in varchar
   )
IS -- Required by the syntax
BEGIN 
   INSERT INTO CUSTOMER( 
            customer_id,
            username,
            first_name,
            last_name,
            phone_number,
            address_id,
            email)
    VALUES( cus_id_arg,
            username_arg,
            first_name_arg,
            last_name_arg,
            phone_number_arg,
            address_id_arg,
            email_arg
            ); 
END;

/

/
--------------------------------------------------------
--  DDL for Procedure ADD_INVENTORY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "ADD_INVENTORY" (   
    Item_sku_arg number,
    warehouse_id_arg number,
    Quanity_arg number,
    seller_id_arg number,
    section_arg varchar, --isle in warehouse used for item location
    loc_arg varchar --bay/rackspace that the item is located within the section of warehouse.
    )
IS
BEGIN
  insert into inventory(
          item_sku,
          warehouse_id,
          quanity,
          seller_id,
          section,
          loc
        )
  values(
        item_sku_arg,
        warehouse_id_arg,
        quanity_arg,
        seller_id_arg,
        section_arg,
        loc_arg
        );
END;

/

/
--------------------------------------------------------
--  DDL for Procedure ADD_NEW_ADDRESS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "ADD_NEW_ADDRESS" (
   address_id_arg IN number,  
   street_line1_arg IN varchar, 
   street_line2_arg IN varchar, 
   city_arg IN varchar,
   state_arg IN varchar,
   country_arg in varchar,
   postal_code_arg in varchar   
   )
IS -- Required by the syntax
BEGIN 
   INSERT INTO ADDRESS( 
            address_id,
            street_line_1,
            street_line_2,
            city,
            state,
            country,
            postal_code)
    VALUES( address_id_arg,
            street_line1_arg,
            street_line2_arg,
            city_arg,
            state_arg,
            country_arg,
            postal_code_arg
            ); 
END;

/

/
--------------------------------------------------------
--  DDL for Procedure ADD_SELLER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "ADD_SELLER" ( --Create a new customer
   sllr_id_arg IN number,
   address_id_arg in number,
   username_arg IN varchar,
   first_name_arg IN varchar,
   last_name_arg IN varchar,
   phone_number_arg in number,
   email_arg in varchar      
   )
IS -- Required by the syntax
BEGIN 
   INSERT INTO seller( 
            seller_id,
            address_id,
            username,
            first_name,
            last_name,
            phone_number,
            email
            )
    VALUES( sllr_id_arg,
            address_id_arg,
            username_arg,
            first_name_arg,
            last_name_arg,
            phone_number_arg,
            email_arg            
            ); 
END;

/

/
--------------------------------------------------------
--  DDL for Procedure ADD_WAREHOUSE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "ADD_WAREHOUSE" (   
    warehouse_id_arg number,
    name_arg varchar,
    address_id_arg number
    )
IS
BEGIN
  insert into warehouse(
        warehouse_id,
        name,
        address_id
        )
  values(
        warehouse_id_arg,
        name_arg,
        address_id_arg);
END;

/

/
--------------------------------------------------------
--  DDL for Procedure ITEMSEARCH_NAME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "ITEMSEARCH_NAME" 
(
  name_arg varchar2    
)
AS
itemReturn number(10) :=0;
BEGIN
  select item_sku into itemReturn from Product 
  where name = name_arg;
END;

/

/
--------------------------------------------------------
--  DDL for Procedure PLACE_ORDER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "PLACE_ORDER" (
  order_id_arg number,
  item_sku_arg number,
  customer_id_arg number,
  quantity_arg number,
  ship_method_arg number
  )
as
  price_arg decimal(12,2) :=0;
  inv_quantity_arg number(10) :=0;
Begin
     
    insert into orders(
                order_id,
                item_sku,
                Customer_id,
                quantity,
		ship_method)
    values( order_id_arg,
            item_sku_arg,
            customer_id_arg,
            quantity_arg,
	    ship_method_arg);

--pricing
    select product.price 
    into price_arg 
    from product
    where item_sku_arg = product.item_sku;
    
    update orders
    set price = price_arg * quantity_arg
    where Orders.order_id = order_id_arg;

--inventory control
  select inventory.quanity
  into inv_quantity_arg
  from inventory
  where item_sku_arg = inventory.item_sku;
  
  update inventory
  set inventory.quanity = inv_quantity_arg - quantity_arg
  where inventory.item_sku = item_sku_arg;
    
end;

/

/
--------------------------------------------------------
--  DDL for Procedure PRC_ADD_PRODUCT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "PRC_ADD_PRODUCT" (   
    item_Sku_arg number,
    name_arg varchar2,
    description_arg varchar2,
    price_arg decimal,
    product_catagory_arg number
    )
IS
BEGIN
  insert into product(
    item_sku,name,description,price,product_catagory)
  values(
    item_sku_arg,name_arg,description_arg,price_arg,product_catagory_arg);
END;

/

/
--------------------------------------------------------
--  DDL for Procedure SHIPMENT_PROCEDURE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SHIPMENT_PROCEDURE" (
      shipment_id_arg number,
      order_id_arg number,
      tracking_number_arg varchar2    
      )
as
  ship_method_id_arg number :=0; -- 
  warehouse_id_arg number :=0;
  customer_id_arg number :=0;--
  address_id_arg number :=0;--
  item_sku_arg number :=0;
Begin
    insert into shipment( shipment_id,
                          order_id,
                          tracking_number)
                Values(shipment_id_arg,
                        order_id_arg,
                        tracking_number_arg);
--pulling all other data from orders and the like
    select orders.ship_method
    into ship_method_id_arg
    from orders
    where order_id_arg = Orders.order_id;
    
    select orders.customer_id
    into customer_id_arg
    from orders
    where order_id_arg = Orders.order_id;
    
    select customer.address_id
    into address_id_arg
    from customer
    where customer_id_arg = Customer.customer_id;
    
    select orders.item_sku
    into item_sku_arg
    from orders
    where order_id_arg = Orders.order_id;
    
    select inventory.warehouse_id
    into warehouse_id_arg
    from inventory
    where item_sku_arg = inventory.item_sku;
    
    update shipment
    set shipment.ship_method_id = ship_method_id_arg,
        shipment.warehouse_id = warehouse_id_arg,
        shipment.customer_id = customer_id_arg,
        shipment.address_id = address_id_arg    
    where order_id_arg = shipment.order_id;
    
end;

/

/
