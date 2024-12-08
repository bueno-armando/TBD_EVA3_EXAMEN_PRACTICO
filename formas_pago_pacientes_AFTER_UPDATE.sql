DELIMITER $$

CREATE DEFINER=`root`@`localhost` TRIGGER `formas_pago_pacientes_AFTER_UPDATE` AFTER UPDATE ON `formas_pago_pacientes` FOR EACH ROW BEGIN
	UPDATE cuentas_pacientes SET forma_pago_pac_id = NEW.forma_pago_pac_id WHERE forma_pago_pac_id = OLD.forma_pago_pac_id;
END

DELIMITER ;