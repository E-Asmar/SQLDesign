-----CREATE TABLES ------

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

create table orders(
  order_id number(10) not null,
  price decimal(12,2),
  item_sku number(10),
  customer_id number(10),
  quantity number(10),
  ship_method number(10)
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


----FOREIGN KEY---------
--Foreign key alters 

--customer table alters
ALTER TABLE customer
ADD CONSTRAINT Cus_Address_FK
   FOREIGN KEY (address_id)
   REFERENCES Address (address_ID);

--inventory table alters
ALTER TABLE Inventory
ADD CONSTRAINT Inv_ITEM_SKU_FK
   FOREIGN KEY (item_sku)
   REFERENCES product (item_sku);
Alter table inventory
add constraint inv_warehouse_id_FK
  foreign key (warehouse_ID)
  references warehouse (warehouse_ID);
Alter table inventory
add constraint inv_seller_id_FK
  foreign key (seller_ID)
  references seller (seller_ID);

--auxillary Primary key
alter table inventory
add constraint PK_Inventory_ID
  primary key (item_sku,warehouse_ID,section,Loc);
--this key is designed to make a unique key as there can only be one itemsku per loc 

--product table alter
Alter table Product
add constraint Product_catagory_FK
  foreign key(product_catagory)
  references catagory(catagory_id);

--seller table alter
Alter table seller
add constraint sllr_address_id_FK
  foreign key (address_id)
  references address (address_ID);


--orders table alter
ALTER TABLE ORDERS
add constraint PK_Orders Primary key(order_id,customer_id);
Alter table Orders
add constraint order_customer_id_FK
  foreign key (customer_id)
  references Customer (customer_id);
Alter table Orders
add constraint order_item_sku_FK
  foreign key (item_sku)
  references product (item_sku);

--Shipment table alter
Alter table shipment
add constraint shpmnt_Ship_method_id_FK
  foreign key (Ship_method_id)
  references Shipmethod (ship_method_ID);
Alter table shipment
add constraint shpmnt_warehouse_id_FK
  foreign key (warehouse_id)
  references warehouse (warehouse_ID);
Alter table shipment
add constraint shpmnt_customer_id_FK
  foreign key (customer_id)
  references customer (customer_ID);
Alter table shipment
add constraint shpmnt_address_id_FK
  foreign key (address_id)
  references address (address_ID);
ALTER TABLE SHIPMENT
ADD CONSTRAINT SHPMNT_ORDER_ID_FK 
foreign KEY (order_id,CUSTOMER_ID) 
references ORDERS (ORDER_ID,CUSTOMER_ID);

--warehouse table alter
Alter table warehouse
add constraint warehouse_address_id_FK
  foreign key (address_id)
  references address (address_ID);

-----STORED PROCEDURES --------

---NEW ADDRESS STORED PROCEDURE

create or replace 
PROCEDURE ADD_NEW_ADDRESS(
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

---ADD NEW SELLER STORED PROCEDURE

create or replace 
PROCEDURE ADD_SELLER( --Create a new customer
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

---ADD NEW WAREHOUSE STORED PROCEDURE 

create or replace 
PROCEDURE ADD_WAREHOUSE(   
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



--Aspect 1b stored procedure creation
-------item search procedures
create or replace 
PROCEDURE itemSearch_name
(
  name_arg varchar2    
)
AS
itemReturn number(10) :=0;
BEGIN
  select item_sku into itemReturn from Product 
  where name = name_arg;
END;

-------Add item procedures 
create or replace 
PROCEDURE PRC_ADD_PRODUCT(   
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

--aspect2b
--Create stored procedure

create or replace 
PROCEDURE ADD_INVENTORY(   
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
--Aspect3b
create or replace 
PROCEDURE ADD_CUSTOMER( --Create a new customer
   cus_id_arg IN number, -- The new customer ID 
   username_arg IN varchar, --USERNAME
   first_name_arg IN varchar, -- The new customer’s first name
   last_name_arg IN varchar,
   phone_number_arg in number,
   address_id_arg in number   
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
	    email	)
    VALUES( cus_id_arg,
            username_arg,
            first_name_arg,
            last_name_arg,
            phone_number_arg,
            address_id_arg,
            email_arg); 
END;
--aspect4b stored procedure
create or replace 
procedure PLACE_ORDER(
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

--aspect5b stored procedure  user provides asigned shipmentID, order id, tracking #
Create or replace
procedure shipment_procedure(
      shipment_id_arg number,
      order_id_arg number,
      tracking_number_arg Varchar2   
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

commit;