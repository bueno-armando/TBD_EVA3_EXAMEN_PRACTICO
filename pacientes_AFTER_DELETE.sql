DELIMITER $$

CREATE DEFINER = CURRENT_USER TRIGGER `hospital`.`pacientes_AFTER_DELETE` AFTER DELETE ON `pacientes` FOR EACH ROW
BEGIN
	DELETE FROM cuartos WHERE paciente_id = OLD.paciente_id;
    DELETE FROM direcciones_pacientes WHERE paciente_id = OLD.paciente_id;
    DELETE FROM registro_pacientes WHERE paciente_id = OLD.paciente_id;
    DELETE FROM cuentas_pacientes WHERE paciente_id = OLD.paciente_id;
END

DELIMITER ;