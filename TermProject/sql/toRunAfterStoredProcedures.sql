begin
  add_new_address(1,'75 state road','','Baldwinville','Massachusetts','USA','01436');
  add_new_address(2,'1 Bob Road','apt 2','millwalkee','Tennessee','USA','00102');
  add_new_address(3,'80 Barrett Street','C6','Northampton','Massachusetts','USA','01060');
  add_new_address(4,'40 test road','','testTown','TestCity','USA','00000');
  add_new_address(5,'1 temple Road','','Dalas','Texas','USA','10001');
  add_new_address(6,'50 Industrial Drive','Suite 102','Northampton','Massachusetts','USA','01060');
  add_new_address(7,'505 running road','unit 2', 'Boston','Massachusetts','USA','02304');
  add_new_address(8,'404 Error Drive','', 'Chippawa','Illinos','USA','08050');
  add_new_address(9,'34 Ascot lane','','Worcester','Ohio','USA','54230');
end;
/

begin
  add_seller(1,1,'testUser','test','user',9999999999,'example@example.com');
  add_seller(2,2,'sueDer','Sue','Der',1111111111,'sueDer@gemail.com');
  add_seller(3,3,'pwaite','Patrick','Waite',5555555555,'pwaite@bu.edu');
END;
/

BEGIN
  add_warehouse(1,'AMZ Warehouse 1', 4);
  add_warehouse(2,'QuickSale StockRoom',5);
  add_warehouse(3,'test Warehouse',3);
END;
/

Begin
    add_customer(4,'bchanning','Bob','Channing',1234567890,8,'bchanning@email.com');
    add_customer(5,'cEmerson','Chris','Emerson',9876543210,9,'cemerson@email.net');
    add_customer(6,'BarbraChan','Barbra','Channing',9876543210,9,'barbChn@email.net');
    add_customer(7,'dMonEmmerson','Demoin','Emerson',9876543210,9,'example@email.net');
    add_customer(8,'EmerVic','Victor','Emerson',9876543210,9,'example@email.net');
end;
/

BEGIN
    place_order(3,1001,1,1);
    place_order(4,1001,3,1);
    place_order(5,1001,4,1);
END;
/
Begin
  shipment_procedure(4,1,'z23874-890-84325-8484');
  shipment_procedure(5,2,'DHL489570927890');
end;
/
Begin
  shipment_procedure(6,1,'4325235324');
  shipment_procedure(7,2,'cer424q342534543');
end;
/
commit;