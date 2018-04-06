--aspect 3
--Aspect3b
create or replace 
PROCEDURE ADD_CUSTOMER( --Create a new customer
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
            address_id,
	    email	)
    VALUES( cus_id_arg,
            username_arg,
            first_name_arg,
            last_name_arg,
            phone_number_arg,
            address_id_arg,
            email_arg); 
END;

--aspect3c
Begin
    add_customer(2,'cchanning','Carter','Channing',1234567890,8,'cchanning@email.com');
    add_customer(3,'dEmerson','Delaney','Emerson',9876543210,9,'demerson@email.net');
end;
/

commit;

--Aspect3d
select last_name,
count(*) as "Number of Accounts"
from customer
group by last_name
having count(last_name) > 2;
