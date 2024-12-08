DELIMITER $$

CREATE DEFINER=`root`@`localhost` TRIGGER `empleados_AFTER_DELETE` AFTER DELETE ON `empleados` FOR EACH ROW BEGIN
	DELETE FROM direcciones_empleados WHERE empleado_id = OLD.empleados_id;
    DELETE FROM registro_pacientes WHERE registro_por_empleado_id = OLD.empleados_id;
END

DELIMITER ;