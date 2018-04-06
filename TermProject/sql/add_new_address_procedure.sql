CREATE OR REPLACE PROCEDURE ADD_NEW_ADDRESS(
   address_id_arg IN number,  
   street_line1_arg IN varchar, 
   street_line2_arg IN varchar, 
   city_arg IN varchar,
   state_arg IN varchar,
   country_arg in varchar,
   postal_code_arg in varchar   
   )
IS -- Required by the syntax
BEGIN 
   INSERT INTO ADDRESS( 
            address_id,
            street_line_1,
            street_line_2,
            city,
            state,
            country,
            postal_code)
    VALUES( address_id_arg,
            street_line1_arg,
            street_line2_arg,
            city_arg,
            state_arg,
            country_arg,
            postal_code_arg
            ); 
END;

commit;