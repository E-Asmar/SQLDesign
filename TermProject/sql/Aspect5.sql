--aspect 5
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

--aspect5c

Begin
  shipment_procedure(2,1,'2345 1256 7345');
  shipment_procedure(3,2,'Z808F F080E0 802JJS0');
end;
/

--aspect 5d
--list all tracking numbers that are associated to the same warehouse 
--where number of shipments is above 3.

select shipment.tracking_number,
       shipment.order_id,
       customer.last_name,
       customer.first_name,
       Address.city,
       address.state
from shipment
join address on shipment.address_id = address.address_id
join customer on shipment.customer_id = customer.customer_id
where shipment.warehouse_id = (select warehouse_id
                              from shipment
                              group by shipment.warehouse_id
                              having count(shipment.warehouse_id) > 3);


commit;