---Aspect 3 New customer accounts
CREATE OR REPLACE PROCEDURE ADD_CUSTOMER( --Create a new customer
   cus_id_arg IN number, -- The new customer ID 
   username_arg IN varchar, --USERNAME
   first_name_arg IN varchar, -- The new customer’s first name
   last_name_arg IN varchar,
   phone_number_arg in number,
   address_id_arg in number   
   )
IS -- Required by the syntax
BEGIN 
   INSERT INTO CUSTOMER( 
            customer_id,
            username,
            first_name,
            last_name,
            phone_number,
            address_id)
    VALUES( cus_id_arg,
            username_arg,
            first_name_arg,
            last_name_arg,
            phone_number_arg,
            address_id_arg
            ); 
END;

commit;