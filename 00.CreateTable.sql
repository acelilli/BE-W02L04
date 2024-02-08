CREATE TABLE Impiegati (
    IDImpiegato INT PRIMARY KEY IDENTITY not null,
    Cognome NVARCHAR(50) not null,
    Nome NVARCHAR(50) not null,
    Data_Assunzione DATETIME not null,
    Codice_Fiscale NVARCHAR(16) unique not null,
    Eta INT not null,
    Reddito_Mensile DECIMAL(10, 2) default 1200,
    Detrazione_Fiscale BIT not null
);

CREATE TABLE Impieghi (
    IDImpiego INT PRIMARY KEY IDENTITY not null,
    IDImpiegato INT,
    Tipo_Impiego NVARCHAR(50) not null,
    CONSTRAINT FK_Impiego_Impiegato FOREIGN KEY (IDImpiegato) REFERENCES Impiegati(IDImpiegato)
	-- con CONSTRAINT posso sia RIMUOVERE un vincolo che crearlo! in questo caso:
	-- CONSTRAIN FK_Impiego_Impiegato in cui:
	  /*CONSTRAINT FK_Impiego_Impiegato = rappresenta il comando. 
	    Quindi FK (foreign key) che lega le tabelle Impiego e Impiegato */
	-- In cui la FOREIGN KEY (che è IDImpiegato) fa riferimento a IDImpiegato dentro alla tabella Impiegato
	 /*DA GUIDA MICROSOFT:
	 FK_<nometabella>_<nometabella>, dove:
	 il primo nometabella è il nome della tabella in cui la chiave sarà chiave ESTERNA (Impiego)
	 il secondo nometabella è il nome della tabella in cui la chiave è chiave PRIMARIA (impiegato). */
);

