
---inserts for product category
insert into catagory(catagory_id,catagory)
  values(1,'Electronics');
insert into catagory(catagory_id,catagory)
  values(2,'Home Goods');
insert into catagory(catagory_id,catagory)
  values(3,'Men''s Clothing');
insert into catagory(catagory_id,catagory)
  values(4,'Women''s Clothing');
insert into catagory(catagory_id,catagory)
  values(5,'Outdoors');
insert into catagory(catagory_id,catagory)
  values(6,'Tools and Hardware');
insert into catagory(catagory_id,catagory)
  values(7,'children''s Clothing');
insert into catagory(catagory_id,catagory)
  values(8,'Health and Beauty');
insert into catagory(catagory_id,catagory)
  values(9,'Computers');


---inserts for shipmethod
insert into shipmethod(ship_method_id,shipping_speed)
values(1,'super saver shipping');
insert into shipmethod(ship_method_id,shipping_speed)
values(2,'Standard Shipping');
insert into shipmethod(ship_method_id,shipping_speed)
values(3,'Two-Day Shipping');
insert into shipmethod(ship_method_id,shipping_speed)
values(4,'One-Day Shipping');

--stored procedure evocation for address
begin
  add_new_address(1,'34 beat road','','ville','Massachusetts','USA','01111');
  add_new_address(2,'1 Bob Road','apt 2','millwalkee','Tennessee','USA','00102');
  add_new_address(3,'8 Bart Street','C43','North','Massachusetts','USA','01003');
  add_new_address(4,'40 test road','','testTown','TestCity','USA','00000');
  add_new_address(5,'1 temple Road','','Dalas','Texas','USA','10001');
  add_new_address(6,'50 Industrial Drive','Suite 102','Northampton','Massachusetts','USA','01060');
  add_new_address(7,'505 running road','unit 2', 'Boston','Massachusetts','USA','02304');
  add_new_address(8,'404 Error Drive','', 'Chippawa','Illinos','USA','08050');
  add_new_address(9,'34 Ascot lane','','Worcester','Ohio','USA','54230');
end;
/
--stored proceure evocation for add seller
begin
  add_seller(1,1,'testUser','test','user',9999999999,'example@example.com');
  add_seller(2,2,'sueDer','Sue','Der',1111111111,'sueDer@gemail.com');
  add_seller(3,3,'pwaite','Patrick','Waite',5555555555,'pwaite@bu.edu');
END;
/
---STORED PROCEDURE FOR ADDING PRODUCTS
BEGIN
    prc_add_product(1003,
          'deck chair',
          'A chair for the outdoor deck',
          38.60, 2);
    prc_add_product(1004,
          'computer mouse',
          'a desk rodent used to move the pointer on screen',
          19.43, 1);
    prc_add_product(1005,
          'Keyboard',
          'used to type and interact with the computer',
          21.13, 1);
    prc_add_product(1006,
          'camera lens',
          'f-stop 55-108mm cameral lens',
          25.00,1);
    prc_add_product(1007,
          'tables',
          'used to place things atop',
          85.00,2);
    prc_add_product(1008,
          'computer tower',
          'has all the nuts and bolts to move at over 1000 jigawatts',
          149.00,1);
    prc_add_product(1009,
          'glassware',
          'used to drink all sorts of liquid based drinks',
          13.78,2);
END;
/

--stored procedure evocation for adding warehouses
BEGIN
  add_warehouse(1,'AMZ Warehouse 1', 4);
  add_warehouse(2,'QuickSale StockRoom',5);
  add_warehouse(3,'test Warehouse',3);
END;
/


--stored procedure evocation for adding customers
Begin
    add_customer(4,'bchanning','Bob','Channing',1234567890,8,'bchanning@email.com');
    add_customer(5,'cEmerson','Chris','Emerson',9876543210,9,'cemerson@email.net');
    add_customer(6,'BarbraChan','Barbra','Channing',9876543210,9,'barbChn@email.net');
    add_customer(7,'dMonEmmerson','Demoin','Emerson',9876543210,9,'example@email.net');
    add_customer(8,'EmerVic','Victor','Emerson',9876543210,9,'example@email.net');
end;
/

--stored evaocaton for placing an order
BEGIN
    place_order(3,1001,1,1);
    place_order(4,1001,3,1);
    place_order(5,1001,4,1);
END;
/

--stored for shipment procedure
Begin
  shipment_procedure(4,1,'z23874-890-84325-8484');
  shipment_procedure(5,2,'DHL489570927890');
  shipment_procedure(6,1,'4325235324');
  shipment_procedure(7,2,'cer424q342534543');
end;
/

commit;