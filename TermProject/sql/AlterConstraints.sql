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


commit;