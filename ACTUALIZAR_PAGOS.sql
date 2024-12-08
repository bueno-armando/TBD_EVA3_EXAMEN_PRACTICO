DELIMITER $$

CREATE PROCEDURE ACTUALIZAR_PAGOS(IN id_paciente INT)
BEGIN
	-- efectivos
    SELECT
        'EFECTIVO' AS TIPO_PAGO, FORMAT(SUM(CASE WHEN fp.tipo_pago = 'EFECTIVO' THEN fp.monto ELSE 0 END), 2) AS MONTO
    UNION ALL
    -- cheques
    SELECT
        'CHEQUE', FORMAT(SUM(CASE WHEN fp.tipo_pago = 'CHEQUE' THEN fp.monto ELSE 0 END), 2)
    UNION ALL
    -- tarjetas cred.
    SELECT
        'TARJETA CRÉDITO', FORMAT(SUM(CASE WHEN fp.tipo_pago = 'TARJETA CRÉDITO' THEN fp.monto ELSE 0 END), 2)
    UNION ALL
    -- tarjetas deb.
    SELECT
        'TARJETA DÉBITO', FORMAT(SUM(CASE WHEN fp.tipo_pago = 'TARJETA DÉBITO' THEN fp.monto ELSE 0 END), 2)
    UNION ALL
    -- no pago
    SELECT
        'SIN PAGO', FORMAT(SUM(CASE WHEN fp.tipo_pago = 'SIN PAGO' THEN fp.monto ELSE 0 END), 2)
    FROM formas_pago_pacientes fp
    WHERE fp.paciente_id = id_paciente;
END $$

DELIMITER ;
