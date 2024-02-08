--  a. Visualizzare tutti gli impiegati oltre i 29 anni; 
 SELECT * FROM impiegati where eta >= 29;
--b. Visualizzare tutti gli impiegati con un reddito di almeno 800 euro mensili; 
 SELECT * FROM impiegati where RedditoMensile >= 800;
-- c. Visualizzare tutti gli impiegati che posseggono la detrazione fiscale; 
SELECT * FROM impiegati where Detrazione_Fiscale = 1;
-- d. Visualizzare tutti gli impiegati che non posseggono la detrazione fiscale; 
 SELECT * FROM impiegati where Detrazione_Fiscale = 0;
 -- e. Visualizzare tutti gli impiegati cui il cognome cominci con una lettera G e li visualizzi in ordine alfabetico; 
 SELECT * FROM impiegati WHERE Cognome LIKE 'G%' ORDER BY Cognome;
 -- f. Visualizzare il numero totale degli impiegati registrati nella base dati; 
 SELECT COUNT(*) AS TotaleImpiegati FROM impiegati 
--g. Visualizzare il totale dei redditi mensili di tutti gli impiegati; 
 SELECT SUM(RedditoMensile) AS TotaleAllRedditiMensili FROM impiegati
-- h. Visualizzare la media dei redditi mensili di tutti gli impiegati; 
 SELECT AVG(RedditoMensile) AS MediaRedditiMensili FROM impiegati 
-- i. Visualizzare l’importo del reddito mensile maggiore; 
 SELECT MAX(RedditoMensile) AS RedditoMaggiore FROM impiegati
-- j. Visualizzare l’importo del reddito mensile minore; 
SELECT MIN(RedditoMensile) AS RedditoMinore FROM impiegati
-- k. Visualizzare gli impiegati assunti dall’01/01/2007 all’01/01/2008:
SELECT *
FROM impiegati
INNER JOIN impieghi ON impiegati.IDImpiegato = impieghi.IDImpiegato
WHERE impieghi.DataAssunzione BETWEEN '2007-01-01' AND '2008-01-01';
-- l. -> Query separata
--m. Visualizzare l’età media dei lavoratori all’interno dell’azienda.
SELECT AVG(Eta) AS MediaEta FROM impiegati
