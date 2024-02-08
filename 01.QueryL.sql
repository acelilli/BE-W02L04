
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:
/*l. Tramite una query parametrica che identifichi il tipo di impiego,
--               visualizzare tutti gli impiegati che corrispondono a quel tipo di impiego*/
-- =============================================
CREATE PROCEDURE VisualizzaPerTipoImpiego
    @TipoImpiego NVARCHAR(50)
AS
BEGIN
    SELECT *
    FROM Impiegati
    INNER JOIN Impieghi ON Impiegati.IDImpiegato = Impieghi.IDImpiegato
	-- Join dei due id
    WHERE Impieghi.Tipo_Impiego = @TipoImpiego;
END;
