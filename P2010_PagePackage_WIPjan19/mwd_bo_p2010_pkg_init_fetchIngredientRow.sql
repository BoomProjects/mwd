SELECT I.INGREDIENT_ID
, I.INGREDIENT_TYPE
, I.MATERIAL
, I.COLOR
, I.WIRE_DIAMETER_MM
, I.INNER_DIAMETER_MM
, I.OUTER_DIAMETER_MM
, I.OPENING_DIAMETER_MM
, I.ASPECT_RATIO
, I.WIRE_DIAMETER_SWG
, I.WIRE_DIAMETER_AWG
INTO
:P2010_INGREDIENT_ID
, :P2010_INGREDIENT_TYPE
, :P2010_MATERIAL
, :P2010_COLOR
, :P2010_WIRE_DIAMETER_MM
, :P2010_INNER_DIAMETER_MM
, :P2010_OUTER_DIAMETER_MM
, :P2010_OPENING_DIAMETER_MM
, :P2010_ASPECT_RATIO
, :P2010_WIRE_DIAMETER_SWG
, :P2010_WIRE_DIAMETER_AWG
FROM INGREDIENTS I
WHERE I.INGREDIENT_ID = :P2010_ITEM_ID;

SELECT * FROM INGREDIENTS
WHERE INGREDIENT_ID = :P2010_ITEM_ID;