--DECLARATION SECTION   
DECLARE 
    --VARAIBLE DECLARATION -KM, MET, CEM;  
    km  NUMBER := 6.9;  
    met NUMBER := 0;  
    cem NUMBER := 0;  
--CODE BLOCK   
BEGIN 
    --CALCULATE METERS  
    met := km * 1000;  
  
    --CALCULATE CENTIMETERS 
    cem := met * 100;  
  
    --DISPLAY RESULT    
    dbms_output.Put_line('6.9KM is equivalent to meters: ' ||met);  
                           
  
    dbms_output.Put_line('6.9KM is equivlent to centimeters:' ||cem);  
                           
END;  
--END PROGRAM  