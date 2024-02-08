-- b. Aggiornamento di un impiegato esistente
CREATE PROCEDURE AggiornaImpiegato
    @IDImpiegato INT,
    @NuovoCognome NVARCHAR(50),
    @NuovoNome NVARCHAR(50),
    @DataAssunzione DATETIME,
    @CodiceFiscale NVARCHAR(16),
    @Eta INT,
    @RedditoMensile DECIMAL(10, 2),
    @DetrazioneFiscale BIT
AS
BEGIN
    UPDATE Impiegati 
    SET Cognome = @NuovoCognome, Nome = @NuovoNome, Data_Assunzione = @DataAssunzione, 
	Codice_Fiscale = @CodiceFiscale, Eta = @Eta, Reddito_Mensile = @RedditoMensile, Detrazione_Fiscale = @DetrazioneFiscale
    WHERE IDImpiegato = @IDImpiegato;
END;