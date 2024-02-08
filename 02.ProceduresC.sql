CREATE PROCEDURE EliminaImpiegato
    @IDImpiegato INT
AS
BEGIN
    DELETE Impiegati
    FROM Impiegati
    INNER JOIN Impieghi ON Impiegati.IDImpiegato = Impieghi.IDImpiegato
    WHERE Impieghi.IDImpiegato = @IDImpiegato; -- Elimina le righe correlate dall'IdImpiegato dalle tabelle Impiegati e Impiego

    DELETE FROM Impieghi WHERE IDImpiegato = @IDImpiegato; -- Elimina l'impiego dalla tabella Impieghi
END;
