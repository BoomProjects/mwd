SELECT MAX(S.SET_ID)
INTO
:P2010_ITEM_SET_LIST
FROM SET_ITEMS S
WHERE S.CREATED_ITEM_ID = :P2010_ITEM_ID;

SELECT *
FROM SET_ITEMS S
WHERE S.CREATED_ITEM_ID = :P2010_ITEM_ID;