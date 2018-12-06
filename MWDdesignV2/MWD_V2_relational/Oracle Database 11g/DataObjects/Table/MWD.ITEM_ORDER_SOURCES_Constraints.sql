ALTER TABLE mwd.item_order_sources ADD CONSTRAINT item_order_sources_un UNIQUE ( item_id,
                                                                                 source_productcode );

ALTER TABLE mwd.item_order_sources ADD CONSTRAINT item_order_sources_un2 UNIQUE ( source_productcode,
                                                                                  source_brand );