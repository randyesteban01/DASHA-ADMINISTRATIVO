USE [costena]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
    ARCHIVO UNICO PARA PRODUCCION
    Correccion de dbo.pr_comprobantes para Facturacion Electronica por tipo especifico.

    Problema corregido:
    - Si el reporte llama dbo.pr_comprobantes con @tipo = 1 para E31, la funcion tomaba
      una rama que recalculaba mal los tickets FE y no cuadraban las formas de pago.

    Solucion:
    - Cuando la empresa usa FE y @tipo <> 0, la funcion usa internamente la salida de
      @tipo = 0 y filtra el eCF solicitado: E31, E32, E34, etc.
    - Tambien normaliza formas de pago por fila para que cuadren contra Total.

    Este script es idempotente:
    - Si ya fue aplicado, no lo aplica de nuevo.
*/

DECLARE @sql nvarchar(max),
        @insertAfter nvarchar(max),
        @fix nvarchar(max),
        @pos int;

SELECT @sql = OBJECT_DEFINITION(OBJECT_ID(N'dbo.pr_comprobantes'));

IF @sql IS NULL
BEGIN
    RAISERROR('No se encontro dbo.pr_comprobantes.', 16, 1);
    RETURN;
END;

-- Convertir CREATE a ALTER aunque la definicion venga con saltos antes.
SET @pos = PATINDEX('%CREATE%', UPPER(@sql));
IF @pos > 0
    SET @sql = STUFF(@sql, @pos, 6, 'ALTER');

-- Evitar aplicar el parche dos veces.
IF CHARINDEX('CORRECCION_FE_TIPO_ESPECIFICO', @sql) > 0
BEGIN
    PRINT 'La correccion FE por tipo especifico ya existe en dbo.pr_comprobantes.';
    GOTO Verificacion;
END;

SET @insertAfter = 'when @par_facelectronica = 1 and @tipo = 10 then ''47'' END)';

SET @pos = CHARINDEX(@insertAfter, @sql);

IF @pos = 0
BEGIN
    RAISERROR('No se encontro el punto de insercion despues de @ncf_fijo.', 16, 1);
    RETURN;
END;

SET @pos = @pos + LEN(@insertAfter);

SET @fix = '

-- CORRECCION_FE_TIPO_ESPECIFICO
-- Para FE por tipo especifico, usar la rama TODOS y filtrar el tipo eCF.
-- Esto evita la rama que recalcula mal tickets y normaliza formas de pago por fila.
IF @par_facelectronica = 1 AND @tipo <> 0
BEGIN
    INSERT INTO @comprobantes
    (
        Fecha, ncf_fijo1, ncf_fijo2, sec1, sec2, Total, Itbis, ItbisNC,
        Grabado, Exento, Descuento, Propina, rnc, efectivo, cheqtransfdep,
        tarjetadebcred, ventacredito, bonoscertif, permuta, otrasformpag,
        monto_0, monto_8, monto_11, monto_13, monto_16, monto_18, mixto
    )
    SELECT
        n.Fecha,
        n.ncf_fijo1,
        n.ncf_fijo2,
        n.sec1,
        n.sec2,
        n.Total,
        n.Itbis,
        n.ItbisNC,
        n.Grabado,
        n.Exento,
        n.Descuento,
        n.Propina,
        n.rnc,
        CASE
            WHEN n.Ajustar = 1 AND n.tarjetadebcred = 0 AND n.efectivo > 0
                THEN n.Total - n.CheqN - n.CreditoN - n.TarjetaN - n.OtrasN
            ELSE n.EfectivoN
        END AS efectivo,
        CASE
            WHEN n.Ajustar = 1 AND n.tarjetadebcred = 0 AND n.efectivo = 0 AND n.cheqtransfdep > 0
                THEN n.Total - n.EfectivoN - n.CreditoN - n.TarjetaN - n.OtrasN
            ELSE n.CheqN
        END AS cheqtransfdep,
        CASE
            WHEN n.Ajustar = 1 AND n.tarjetadebcred > 0
                THEN n.Total - n.EfectivoN - n.CheqN - n.CreditoN - n.OtrasN
            ELSE n.TarjetaN
        END AS tarjetadebcred,
        CASE
            WHEN n.Ajustar = 1 AND n.tarjetadebcred = 0 AND n.efectivo = 0 AND n.cheqtransfdep = 0 AND n.ventacredito > 0
                THEN n.Total - n.EfectivoN - n.CheqN - n.TarjetaN - n.OtrasN
            ELSE n.CreditoN
        END AS ventacredito,
        n.bonoscertif,
        n.permuta,
        CASE
            WHEN n.Ajustar = 1 AND n.tarjetadebcred = 0 AND n.efectivo = 0 AND n.cheqtransfdep = 0 AND n.ventacredito = 0 AND n.otrasformpag > 0
                THEN n.Total - n.EfectivoN - n.CheqN - n.CreditoN - n.TarjetaN
            ELSE n.OtrasN
        END AS otrasformpag,
        n.monto_0,
        n.monto_8,
        n.monto_11,
        n.monto_13,
        n.monto_16,
        n.monto_18,
        n.mixto
    FROM
    (
        SELECT
            b.*,
            CASE WHEN b.PagoTotal > 0 AND ABS(b.PagoTotal - b.Total) > 0.01 THEN 1 ELSE 0 END AS Ajustar,
            CASE WHEN b.PagoTotal > 0 AND ABS(b.PagoTotal - b.Total) > 0.01 THEN ROUND(b.efectivo * b.Total / b.PagoTotal, 2) ELSE b.efectivo END AS EfectivoN,
            CASE WHEN b.PagoTotal > 0 AND ABS(b.PagoTotal - b.Total) > 0.01 THEN ROUND(b.cheqtransfdep * b.Total / b.PagoTotal, 2) ELSE b.cheqtransfdep END AS CheqN,
            CASE WHEN b.PagoTotal > 0 AND ABS(b.PagoTotal - b.Total) > 0.01 THEN ROUND(b.ventacredito * b.Total / b.PagoTotal, 2) ELSE b.ventacredito END AS CreditoN,
            CASE WHEN b.PagoTotal > 0 AND ABS(b.PagoTotal - b.Total) > 0.01 THEN ROUND(b.tarjetadebcred * b.Total / b.PagoTotal, 2) ELSE b.tarjetadebcred END AS TarjetaN,
            CASE WHEN b.PagoTotal > 0 AND ABS(b.PagoTotal - b.Total) > 0.01 THEN ROUND(b.otrasformpag * b.Total / b.PagoTotal, 2) ELSE b.otrasformpag END AS OtrasN
        FROM
        (
            SELECT
                c.*,
                ISNULL(c.efectivo, 0)
                    + ISNULL(c.cheqtransfdep, 0)
                    + ISNULL(c.ventacredito, 0)
                    + ISNULL(c.tarjetadebcred, 0)
                    + ISNULL(c.otrasformpag, 0) AS PagoTotal
            FROM dbo.pr_comprobantes(@emp, 0, @fec1, @fec2, @tiporeporte) c
            WHERE SUBSTRING(LTRIM(RTRIM(c.ncf_fijo1)), 2, 2) = @ncf_fijo
        ) b
    ) n;

    RETURN;
END
';

SET @sql = STUFF(@sql, @pos, 0, @fix);

EXEC sys.sp_executesql @sql;

PRINT 'dbo.pr_comprobantes corregida para FE por tipo especifico.';

Verificacion:

PRINT 'Verificacion rapida: si hay data de mayo 2026, E31 debe cuadrar formas contra total.';

IF EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.pr_comprobantes'))
BEGIN
    SELECT
        ncf_fijo1,
        COUNT(*) AS Cantidad,
        SUM(Total) AS TotalVentas,
        SUM(ISNULL(efectivo,0)+ISNULL(cheqtransfdep,0)+ISNULL(ventacredito,0)+ISNULL(tarjetadebcred,0)+ISNULL(otrasformpag,0)) AS TotalFormas
    FROM dbo.pr_comprobantes(1, 1, '2026-05-01', '2026-05-31', 'G')
    GROUP BY ncf_fijo1
    ORDER BY ncf_fijo1;
END;
GO
