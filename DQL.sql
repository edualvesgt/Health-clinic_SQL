--DQL

USE Health_Clinic

SELECT 
		Consulta.IdConsulta,
		Consulta.[Data],
		Consulta.Hora,
		Clinica.Nome AS Nome_Da_Clinica,
		Medico_Usuario.Nome AS Medico,
		Paciente_Usuario.Nome AS Paciente,
		Especialidade.Especialidade,
		Medico.CRM,
		Consulta.Prontuario,
		Comentario.Comentario


FROM Consulta
JOIN Medico ON Medico.IdMedico = Consulta.IdMedico
JOIN Especialidade ON Medico.IdEspecialidade = Especialidade.IdEspecialidade 
JOIN Clinica ON Medico.IdClinica = Clinica.IdClinica
JOIN Paciente ON Consulta.IdPaciente = Paciente.IdPaciente
JOIN Comentario ON Paciente.IdPaciente = Paciente.IdPaciente
JOIN Usuario AS Paciente_Usuario ON Paciente.IdUsuario = Paciente_Usuario.IdUsuario
JOIN Usuario AS Medico_Usuario ON Medico.IdUsuario = Medico_Usuario.IdUsuario



CREATE FUNCTION 



