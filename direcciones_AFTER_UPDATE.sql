DELIMITER $$

CREATE DEFINER=`root`@`localhost` TRIGGER `direcciones_AFTER_UPDATE` AFTER UPDATE ON `direcciones` FOR EACH ROW BEGIN
	UPDATE direcciones_pacientes SET direccion_id = NEW.direccion_id WHERE direccion_id = OLD.direccion_id;
    UPDATE direcciones_empleados SET direccion_id = NEW.direccion_id WHERE direccion_id = OLD.direccion_id;
END

DELIMITER ;