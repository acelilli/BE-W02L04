-- b. Aggiornamento di un impiegato esistente
CREATE PROCEDURE AggiornaImpiegato
    @IDImpiegato INT,
    @NewCognome NVARCHAR(50),
    @NewNome NVARCHAR(50),
    @NewCF NVARCHAR(16),
    @NewEta INT,
    @NewRedditoMensile DECIMAL(10, 2),
    @NewDetrazioneFiscale BIT
AS
BEGIN
    UPDATE IMPIEGATI 
    SET Cognome = @NewCognome, Nome = @NewNome, 
	CF = @NewCf, Eta = @NewEta, RedditoMensile = @NewRedditoMensile, Detrazione_Fiscale = @NewDetrazioneFiscale
    WHERE IDImpiegato = @IDImpiegato;
END;
