begin  
     case :APEX$ROW_STATUS  
     when 'C' then  
         insert into KIT_ITEMS ( KIT_ID, ITEM_ID, QUANTITY, UNIT_PRICE )  
         values ( :P2010_KIT_ID, :ITEM_ID, :QUANTITY, :UNIT_PRICE )  
         returning KIT_ITEM_ID into :KIT_ITEM_ID;  
     when 'U' then  
         update KIT_ITEMS 
            set KIT_ID  = :P2010_KIT_ID,  
               ITEM_ID = :ITEM_ID,
                QUANTITY = :QUANTITY,
                UNIT_PRICE = :UNIT_PRICE
          where KIT_ITEM_ID  = :KIT_ITEM_ID;  
     when 'D' then  
         delete KIT_ITEMS
         where KIT_ITEM_ID = :KIT_ITEM_ID;  
     end case;  
end;