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

commit;