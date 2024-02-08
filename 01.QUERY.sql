--  a. Visualizzare tutti gli impiegati oltre i 29 anni; 
 SELECT * FROM Impiegati where eta >= 29;
--b. Visualizzare tutti gli impiegati con un reddito di almeno 800 euro mensili; 
 SELECT * FROM Impiegati where Reddito_Mensile >= 800;
-- c. Visualizzare tutti gli impiegati che posseggono la detrazione fiscale; 
SELECT * FROM Impiegati where Detrazione_Fiscale = 1;
-- d. Visualizzare tutti gli impiegati che non posseggono la detrazione fiscale; 
 SELECT * FROM Impiegati where Detrazione_Fiscale = 0;
-- e. Visualizzare tutti gli impiegati cui il cognome cominci con una lettera G e li visualizzi in ordine alfabetico; 
 SELECT * FROM Impiegati WHERE Cognome LIKE 'G%' ORDER BY Cognome;
-- f. Visualizzare il numero totale degli impiegati registrati nella base dati; 
 SELECT COUNT(*) AS TotaleImpiegati FROM Impiegati 
--g. Visualizzare il totale dei redditi mensili di tutti gli impiegati; 
 SELECT SUM(Reddito_Mensile) AS TotaleAllRedditiMensili FROM Impiegati
-- h. Visualizzare la media dei redditi mensili di tutti gli impiegati; 
 SELECT AVG(Reddito_Mensile) AS MediaRedditiMensili FROM Impiegati 
-- i. Visualizzare l’importo del reddito mensile maggiore; 
 SELECT MAX(Reddito_Mensile) AS RedditoMaggiore FROM Impiegati
-- j. Visualizzare l’importo del reddito mensile minore; 
SELECT MIN(Reddito_Mensile) AS RedditoMinore FROM Impiegati
-- k. Visualizzare gli impiegati assunti dall’ 01/01/2007 all’ 01/01/2008; 
SELECT * FROM Impiegati WHERE Data_Assunzione BETWEEN '2007-01-01' AND '2008-01-01';
-- l. Tramite una query parametrica che identifichi il tipo di impiego, visualizzare tutti gli impiegati che corrispondono a quel tipo di impiego; 
-- File separato
--m. Visualizzare l’età media dei lavoratori all’interno dell’azienda.
SELECT AVG(Eta) AS MediaEta FROM Impiegati