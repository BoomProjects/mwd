begin  
     case :APEX$ROW_STATUS  
     when 'C' then  
         insert into SET_ITEMS ( SET_ID, CREATED_ITEM_ID, QUANTITY, UNIT_PRICE )  
         values ( :P2010_SET_ID, :CREATED_ITEM_ID, :QUANTITY, :UNIT_PRICE )  
         returning SET_ITEM_ID into :SET_ITEM_ID;  
     when 'U' then  
         update SET_ITEMS 
            set SET_ID  = :P2010_SET_ID,  
                CREATED_ITEM_ID = :CREATED_ITEM_ID,
                QUANTITY = :QUANTITY,
                UNIT_PRICE = :UNIT_PRICE
          where SET_ITEM_ID  = :SET_ITEM_ID;  
     when 'D' then  
         delete SET_ITEMS
         where SET_ITEM_ID = :SET_ITEM_ID;  
     end case;  
end;