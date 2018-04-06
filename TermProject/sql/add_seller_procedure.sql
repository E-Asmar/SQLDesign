create or replace 
PROCEDURE ADD_SELLER( --Create a new customer
   sllr_id_arg IN number,
   address_id_arg in number,
   username_arg IN varchar,
   first_name_arg IN varchar,
   last_name_arg IN varchar,
   phone_number_arg in number,
   email_arg in varchar      
   )
IS -- Required by the syntax
BEGIN 
   INSERT INTO seller( 
            seller_id,
            address_id,
            username,
            first_name,
            last_name,
            phone_number,
            email
            )
    VALUES( sllr_id_arg,
            address_id_arg,
            username_arg,
            first_name_arg,
            last_name_arg,
            phone_number_arg,
            email_arg            
            ); 
END;

commit;