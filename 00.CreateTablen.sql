CREATE TABLE IMPIEGATI (
    IDImpiegato INT PRIMARY KEY IDENTITY not null,
    Cognome NVARCHAR(50) not null,
    Nome NVARCHAR(50) not null,
    CF NVARCHAR(16) unique not null,
    Eta INT not null,
    RedditoMensile DECIMAL(10, 2) default 1200,
    Detrazione_Fiscale BIT not null
);
CREATE TABLE Impieghi (
    IDImpiego INT PRIMARY KEY IDENTITY not null,
    IDImpiegato INT,
    Tipo_Impiego NVARCHAR(50) not null,
	DataAssunzione DATE not null
	);
