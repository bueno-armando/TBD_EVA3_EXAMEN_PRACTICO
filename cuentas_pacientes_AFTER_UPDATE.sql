DELIMITER $$

CREATE DEFINER=`root`@`localhost` TRIGGER `cuentas_pacientes_AFTER_UPDATE` AFTER UPDATE ON `cuentas_pacientes` FOR EACH ROW BEGIN
	UPDATE cuentas_pacientes_detalles SET cuentas_pacientes_id = NEW.cuentas_pacientes_id WHERE cuentas_pacientes_id = OLD.cuentas_pacientes_id;
END

DELIMITER ;