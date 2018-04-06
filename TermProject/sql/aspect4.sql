--Aspect4
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


--ASPECT4C EXECUTION
BEGIN
    place_order(1,1001,2,2,2);
    place_order(2,1002,3,1,2);
END;
/


--aspect4D
select  customer.first_name,
        customer.last_name,
        address.street_line_1,
        address.street_line_2,
        address.city,
        address.state,
        address.postal_code,
        orders.item_sku
from customer
join address on customer.address_id = address.address_id
join orders on customer.customer_id = orders.customer_id
where orders.item_sku = (select item_sku
                          from orders
                          group by item_sku
                          having count(item_sku) > 3);

commit;