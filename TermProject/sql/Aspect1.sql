--Aspect 1 New Product 

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


--Aspect 1c stored procedure execution
BEGIN

    prc_add_product(1001,
          'Floating Lamp',
          'A lamp that floats in the air rather than rests on the desk',
          19.85, 2);
    prc_add_product(1002,
          'Throwable Camera',
          'allows a photographer to throw the camera to take pictures mid-flight',
          22.50,1);
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

commit;