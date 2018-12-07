DECLARE

    p_decimal NUMBER := -7;
--    p_decimal NUMBER := 0.25;
--    p_decimal NUMBER := 3/4;
--    p_decimal NUMBER := 1.25;
--    p_decimal NUMBER := -5/3;
--    p_decimal NUMBER := -2/3;
--    p_decimal NUMBER := 1/3;
--    p_decimal NUMBER := 2/15;
--    p_decimal NUMBER := 7/15;
    
    a          NUMBER;
    a_power    NUMBER := 0;
    a_factor   NUMBER := 0;
    ax         NUMBER;
    p          NUMBER := 0;
    diff       NUMBER;
    diff_prev  NUMBER := 9999999999999999999;
    
    lv_unit        NUMBER;
    lv_unit_v      VARCHAR2(25);
    lv_numerator   NUMBER;
    lv_denominator NUMBER;
    lv_fraction    VARCHAR2(25);

BEGIN
    a := abs(p_decimal);
    dbms_output.put_line(a);


    LOOP
        p := p + 1;
        a_factor :=  power(10, a_power) * a;

        ax := (power(10, p) * a);

        diff := ax - a_factor - trunc(ax);
        
        EXIT WHEN diff = floor(diff);
        
        IF diff >= diff_prev THEN
            a_power := a_power + 1;
            a_factor := power(10, a_power) * a;
            p := p - a_power;
            diff_prev := 9999999999999999999;
        ELSE
            diff_prev := diff;
        END IF;

    END LOOP;
    
    lv_numerator := ax - a_factor;
    lv_denominator := (power(10,p) - power(10,a_power));
    
    lv_fraction := (lv_numerator * sign(p_decimal)) || '/' || lv_denominator;
    dbms_output.put_line('Unreduced: ' || lv_fraction);


    -- Simplify the fraction
    FOR i IN REVERSE 2..trunc(lv_numerator) LOOP
        IF  (lv_numerator / i) = trunc(lv_numerator / i)
        AND (lv_denominator / i) = trunc(lv_denominator / i) THEN
            lv_numerator := lv_numerator / i;
            lv_denominator := lv_denominator / i;
        END IF;
    END LOOP;
    
    lv_fraction := (lv_numerator * sign(p_decimal)) || '/' || lv_denominator;
    dbms_output.put_line('Reduced, potentially improper: ' || lv_fraction);


    -- elminate the improper fraction
    IF lv_numerator > lv_denominator 
    AND lv_denominator != 1 THEN
        lv_unit := MOD(lv_numerator, lv_denominator);
        lv_numerator := lv_numerator - lv_denominator;
        lv_unit_v := lv_unit * sign(p_decimal) || ' ';
    ELSE
        lv_unit_v := NULL;
        lv_numerator := lv_numerator * sign(p_decimal);
    END IF;

    CASE WHEN lv_denominator = 1 THEN
        lv_fraction := lv_unit_v || lv_numerator;
         ELSE
        lv_fraction := lv_unit_v || lv_numerator || '/' || lv_denominator;
    END CASE;

    dbms_output.put_line('Reduced and proper: ' || lv_fraction);
    
END;
/