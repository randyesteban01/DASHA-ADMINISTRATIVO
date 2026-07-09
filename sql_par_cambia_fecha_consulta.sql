-- Parametro: permitir cambiar fecha de factura desde Consulta de Facturas
-- Ejecutar en la base de datos de DASHA antes de usar la opcion en pantalla.

IF NOT EXISTS (
  SELECT 1
  FROM sys.columns
  WHERE object_id = OBJECT_ID(N'dbo.PARAMETROS')
    AND name = N'par_cambia_fecha_consulta'
)
BEGIN
  ALTER TABLE dbo.PARAMETROS
    ADD par_cambia_fecha_consulta VARCHAR(5) NULL;
END
GO

UPDATE dbo.PARAMETROS
SET par_cambia_fecha_consulta = 'False'
WHERE par_cambia_fecha_consulta IS NULL;
GO
