DELIMITER $$

CREATE DEFINER=`root`@`localhost` TRIGGER `empleados_AFTER_UPDATE` AFTER UPDATE ON `empleados` FOR EACH ROW BEGIN
	UPDATE direcciones_empleados SET empleado_id = NEW.empleados_id WHERE empleado_id = OLD.empleados_id;
    UPDATE registro_pacientes SET registro_por_empleado_id = NEW.empleados_id WHERE registro_por_empleado_id = OLD.empleados_id;
END

DELIMITER ;