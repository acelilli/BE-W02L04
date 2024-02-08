-- c. Eliminazione di un impiegato
CREATE PROCEDURE EliminaImpiegato
    @IDImpiegato INT
AS
BEGIN
    DELETE FROM Impiegati WHERE IDImpiegato = @IDImpiegato;
END;