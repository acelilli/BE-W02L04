-- a. Memorizzazione di un nuovo impiegato
CREATE PROCEDURE NuovoImpiegato
    @Cognome NVARCHAR(50),
    @Nome NVARCHAR(50),
    @CF NVARCHAR(16),
    @Eta INT,
    @RedditoMensile DECIMAL(10, 2),
    @DetrazioneFiscale BIT
AS
BEGIN
    INSERT INTO IMPIEGATI (Cognome, Nome, CF, Eta, RedditoMensile, Detrazione_Fiscale)
    VALUES (@Cognome, @Nome, @CF, @Eta, @RedditoMensile, @DetrazioneFiscale);
END;