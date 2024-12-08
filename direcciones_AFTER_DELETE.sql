DELIMITER $$

CREATE DEFINER=`root`@`localhost` TRIGGER `direcciones_AFTER_DELETE` AFTER DELETE ON `direcciones` FOR EACH ROW BEGIN
	DELETE FROM direcciones_pacientes WHERE direccion_id = OLD.direccion_id;
    DELETE FROM direcciones_empleados WHERE direccion_id = OLD.direccion_id;
END

DELIMITER ;