DELIMITER $$

CREATE FUNCTION GENERAR_NUMERO_SEGURO(fecha_nacimiento DATE)
RETURNS VARCHAR(11)
DETERMINISTIC
BEGIN
    DECLARE oficina_id VARCHAR(2);
    DECLARE anio_registro INT;
    DECLARE nacimiento_corto VARCHAR(2);
    DECLARE numero_consecutivo INT;
    DECLARE digito_final INT;
    DECLARE nss_completo_base VARCHAR(10);

    -- número oficina (RANDOM)
    SET oficina_id = LPAD(FLOOR(RAND() * 100), 2, '0');
    -- año de inscripción (CALCULADO)
    SET anio_registro = FLOOR(YEAR(fecha_nacimiento) + 15 + RAND() * (YEAR(CURDATE()) - (YEAR(fecha_nacimiento) + 15)));
    -- tomar 2 dig. de la fecha de nacimientos
    SET nacimiento_corto = RIGHT(YEAR(fecha_nacimiento), 2);

    -- meter al siguiente consecutivo
    SELECT consecutivo INTO numero_consecutivo 
    FROM CONSECUTIVOS 
    ORDER BY consecutivo DESC LIMIT 1;
    INSERT INTO CONSECUTIVOS (consecutivo) VALUES (numero_consecutivo + 1);

    -- pre nss
    SET nss_completo_base = CONCAT(oficina_id, RIGHT(anio_registro, 2), nacimiento_corto, numero_consecutivo);
	-- dig. verif. (YA ESTÁ LA FUNCIÓN)
    SET digito_final = CALCULAR_DIGITO_VERIFICADOR(nss_completo_base);

	-- juntar todo y hacer el return
    RETURN CONCAT(nss_completo_base, digito_final);
END $$

DELIMITER ;
