CREATE TABLE Product (
  item_sku NUMBER(10) PRIMARY KEY NOT NULL,
  Name VARCHAR2(255),
  Description VARCHAR2(255),
  Price Decimal(12,2),
  Product_catagory NUMBER(10)
);

CREATE TABLE Warehouse (
  warehouse_id NUMBER(10)  PRIMARY KEY NOT NULL,
  name VARCHAR2(255),
  address_id NUMBER(10)
);

CREATE TABLE Address (
  address_id NUMBER(10)  PRIMARY KEY NOT NULL,
  Street_line_1 VARCHAR2(255),
  street_line_2 VARCHAR2(255),
  city VARCHAR2(255),
  state VARCHAR2(255),
  country VARCHAR2(255),
  postal_code VARCHAR2(255)
);

CREATE TABLE Seller (
  seller_id NUMBER(10) PRIMARY KEY NOT NULL,
  Username VARCHAR2(255),
  first_Name VARCHAR2(255),
  last_Name VARCHAR2(255),
  phone_number NUMBER(10),
  address_id NUMBER(10),
  Email VARCHAR2(255)
);

CREATE TABLE Catagory (
  catagory_id NUMBER(10)  PRIMARY KEY NOT NULL,
  catagory VARCHAR2(255)
);

CREATE TABLE Inventory (
  item_sku Decimal(10) NOT NULL,
  warehouse_id Decimal(10),
  quanity Decimal(10),
  seller_id Decimal(10),
  section VARCHAR2(255),
  loc varchar2(255)
);

CREATE TABLE Customer (
  Customer_ID NUMBER(10) PRIMARY KEY NOT NULL,
  Username VARCHAR2(255),
  first_Name VARCHAR2(255),
  last_Name VARCHAR2(255),
  phone_number NUMBER(10),
  address_id NUMBER(10),
  Email VARCHAR2(255)
);

CREATE TABLE shipMethod (
  ship_method_id NUMBER(10) PRIMARY KEY NOT NULL,
  shipping_speed varchar2(255)
);

CREATE TABLE Shipment (
  shipment_id Number(10) PRIMARY KEY NOT NULL,
  ship_method_id NUMBER(10),
  order_id Number(10),
  warehouse_id number(10),
  customer_id Number(10),
  address_id Number(10),
  tracking_number Varchar2(255)
);

create table orders(
  order_id number(10) not null,
  price decimal(12,2),
  item_sku number(10),
  customer_id number(10),
  quantity number(10),
  ship_method number(10)
  );
commit;