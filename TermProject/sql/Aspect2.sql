--Aspect 2 : product delivery

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

commit;