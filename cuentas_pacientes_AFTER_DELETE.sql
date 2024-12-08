DELIMITER $$

CREATE DEFINER=`root`@`localhost` TRIGGER `cuentas_pacientes_AFTER_DELETE` AFTER DELETE ON `cuentas_pacientes` FOR EACH ROW BEGIN
	DELETE FROM cuentas_pacientes_detalles WHERE cuentas_pacientes_id = OLD.cuentas_pacientes_id;
END

DELIMITER ;