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

commit;