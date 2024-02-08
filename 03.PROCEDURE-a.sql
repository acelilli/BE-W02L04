-- a. Memorizzazione di un nuovo impiegato
CREATE PROCEDURE NuovoImpiegato
    @Cognome NVARCHAR(50),
    @Nome NVARCHAR(50),
    @DataAssunzione DATETIME,
    @CodiceFiscale NVARCHAR(16),
    @Eta INT,
    @RedditoMensile DECIMAL(10, 2),
    @DetrazioneFiscale BIT
AS
BEGIN
    INSERT INTO Impiegati (Cognome, Nome, Data_Assunzione, Codice_Fiscale, Eta, Reddito_Mensile, Detrazione_Fiscale)
    VALUES (@Cognome, @Nome, @DataAssunzione, @CodiceFiscale, @Eta, @RedditoMensile, @DetrazioneFiscale);
END;

