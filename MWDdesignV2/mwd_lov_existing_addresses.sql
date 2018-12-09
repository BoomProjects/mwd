select 
l.street || '' '' || l.nr || l.nr_addition || '', '' || l.postal_code || '' '' || l.city || ''('' || l.country || '')'' as display,
l.location_address_id as return
from location_addresses l
order by 1;

select 
l.street || ' ' || l.nr || l.nr_addition || ', ' || l.postal_code || ' ' || l.city || '(' || l.country || ')' as display,
l.location_address_id as return
from location_addresses l
order by 1;

-- lov existing addresses => BOTH NOT WORKING.
-- 1 error has occurred
-- LOV query is invalid, a display and a return value are needed, the column names need to be different. If your query contains an in-line query, the first FROM clause in the SQL statement must not belong to the in-line query.