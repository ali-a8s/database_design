-- set availability to true or false (trigger)
CREATE OR REPLACE FUNCTION set_book_availability()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE books
    SET is_available = (NEW.return_date IS NOT NULL)
    WHERE id = NEW.book_id;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER loan_insert_trigger
AFTER INSERT ON loans
FOR EACH ROW
EXECUTE FUNCTION set_book_availability();

CREATE TRIGGER loan_update_trigger
AFTER UPDATE OF return_date ON loans
FOR EACH ROW
WHEN (OLD.return_date IS DISTINCT FROM NEW.return_date)
EXECUTE FUNCTION set_book_availability();