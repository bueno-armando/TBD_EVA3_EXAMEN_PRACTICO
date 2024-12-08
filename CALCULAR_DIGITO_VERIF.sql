DELIMITER $$

CREATE FUNCTION CALCULAR_DIGITO_VERIFICADOR(nss_base VARCHAR(10))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE suma_total INT DEFAULT 0;
    DECLARE posicion INT DEFAULT 1;
    DECLARE multiplicador INT;
    DECLARE valor INT;
    
    WHILE posicion <= CHAR_LENGTH(nss_base) DO
        SET multiplicador = CASE WHEN MOD(posicion, 2) = 1 THEN 1 ELSE 2 END;
        SET valor = SUBSTRING(nss_base, posicion, 1) * multiplicador;
        -- caso: reducir a un solo digito cuando es > 10
        IF valor >= 10 THEN
            SET valor = FLOOR(valor / 10) + MOD(valor, 10);
        END IF;
        -- suma
        SET suma_total = suma_total + valor;
        SET posicion = posicion + 1;
    END WHILE;
    -- calculo del faltante (y hacer return a la vez)
    RETURN (10 - MOD(suma_total, 10)) MOD 10;
END $$

DELIMITER ;
