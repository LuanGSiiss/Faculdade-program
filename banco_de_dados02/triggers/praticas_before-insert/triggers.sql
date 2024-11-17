--triggers 

CREATE OR REPLACE FUNCTION update_total_qty()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS
$$
DECLARE
   p_row_count INT;
BEGIN
   SELECT COUNT(*) FROM inventory_stat
   INTO p_row_count;
   IF p_row_count > 0 THEN
      UPDATE inventory_stat
      SET total_qty = total_qty + NEW.quantity;
   ELSE
      INSERT INTO inventory_stat(total_qty)
      VALUES(new.quantity);
   END IF;
   RETURN NEW;
END;
$$;

CREATE TRIGGER inventory_before_insert
BEFORE INSERT
ON inventory
FOR EACH ROW
EXECUTE FUNCTION update_total_qty();