USE [Esercizio4]
GO-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	Tramite una query parametrica che identifichi il tipo di impiego,
--               visualizzare tutti gli impiegati che corrispondono a quel tipo di impiego
-- =============================================
ALTER PROCEDURE [dbo].[VisualizzaImpiegatiPerImpiego]
@TipoImpiego NVARCHAR(50)
AS
BEGIN
	SELECT * FROM Impiegati WHERE IDImpiegato IN (SELECT IDImpiegato FROM Impieghi WHERE Tipo_Impiego = @TipoImpiego);
END
