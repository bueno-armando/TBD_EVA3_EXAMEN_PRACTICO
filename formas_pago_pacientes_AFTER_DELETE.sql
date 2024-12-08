DELIMITER $$

CREATE DEFINER=`root`@`localhost` TRIGGER `formas_pago_pacientes_AFTER_DELETE` AFTER DELETE ON `formas_pago_pacientes` FOR EACH ROW BEGIN
	DELETE FROM cuentas_pacientes WHERE forma_pago_pac_id = OLD.forma_pago_pac_id;
END

DELIMITER ;