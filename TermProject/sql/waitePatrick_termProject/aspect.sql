--Aspect 1 - NEW PRODUCT

--Aspect 1c stored procedure execution
BEGIN

    prc_add_product(1001,
          'Floating Lamp',
          'A lamp that floats in the air rather than rests on the desk',
           19.85, 
	   2);
    prc_add_product(1002,
          'Throwable Camera',
          'allows a photographer to throw the camera to take pictures mid-flight',
           22.50,
	   1);

END;
/


--Aspect 1d Query

select  product.item_sku,
        product.name,
        product.description,
        product.price,
        catagory.catagory
from product
join catagory on product.product_catagory = catagory.catagory_id
where catagory.catagory = 'Computers' 
or catagory.catagory = 'Electronics'
and product.price < 25;

--Aspect 2 - PRODCUT DELVERY

--aspect2c
--invocation of add_inventory
begin
  add_inventory(1001,2,10,2,'GR','S210');
  add_inventory(1002,3,10,2,'TFB','501');
end;
/


--aspect2d
select  seller.first_name,
        seller.last_name,
        product.item_sku, 
        product.name,
        inventory.quanity
from inventory
join seller on seller.seller_id = inventory.seller_id
join product on product.item_sku = inventory.item_sku
where inventory.seller_id = 2
and inventory.quanity < 12;



--Aspect 3 - NEW CUSTOMER ACCOUNTS

--aspect3c
Begin
    add_customer(2,'cchanning','Carter','Channing',1234567890,8,'cchanning@email.com');
    add_customer(3,'dEmerson','Delaney','Emerson',9876543210,9,'demerson@email.net');
end;
/

--Aspect3d
select last_name,
count(*) as "Number of Accounts"
from customer
group by last_name
having count(last_name) > 2;


--Aspect 4 - PRODUCT PURCHASES

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



--Aspect 5 - PRODUCT SHIPMENT

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