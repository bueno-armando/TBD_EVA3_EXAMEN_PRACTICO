DELIMITER $$

CREATE DEFINER=`root`@`localhost` TRIGGER `pacientes_AFTER_UPDATE` AFTER UPDATE ON `pacientes` FOR EACH ROW BEGIN
	UPDATE cuartos SET paciente_id = NEW.paciente_id WHERE paciente_id = OLD.paciente_id;
    UPDATE direcciones_pacientes SET paciente_id = NEW.paciente_id WHERE paciente_id = OLD.paciente_id;
    UPDATE registro_pacientes SET paciente_id = NEW.paciente_id WHERE paciente_id = OLD.paciente_id;
    UPDATE cuentas_pacientes SET paciente_id = NEW.paciente_id WHERE paciente_id = OLD.paciente_id;
END

DELIMITER ;