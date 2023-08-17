--DML 

USE Health_Clinic

INSERT INTO TipoUsuario (TipoUsuario)
VALUES ('Administrador')

INSERT INTO Clinica (Nome,CNPJ,Endereco,RazaoSocial,Abertura,Fechamento)
VALUES ('Duds_Games' ,'9586741524578', 'Rua Padre', 'Duds LTDA' ,'09H', '17H'),
('DuBack' ,'85453215637', 'Rua Lopes', 'DuBack LTDA' ,'12H', '22H')

INSERT INTO Especialidade (Especialidade)
VALUES ('Pediatra'), ( 'Ortopedista')

INSERT INTO Usuario (IdTipo,Email,SENHA,Nome)
VALUES 
('3', 'teste@gmail.com','1234', 'Chef'),
('2', 'Orto@gmail.com','3216', 'Eduardo'),
('1', 'Paci@gmail.com','9568', 'Claudio')

INSERT INTO Medico (IdUsuario, IdEspecialidade, IdClinica, CRM)
VALUES 
('10','2', '1', '5578'), ('10','1', '2', '8745')



INSERT INTO Paciente(IdUsuario, RG, CPF, DataNascimento, Telefone, Endereco)
VALUES
('11', '537755822', '124578362958', '20/12/2003', '958671245', 'Rua Padre'),
('11', '693524156', '122635487988', '01/01/2001', '942791180', 'Rua Clovis ')


INSERT INTO Comentario(IdPaciente, Comentario)
VALUES 
('5', 'Local sem estrutura'),('6', 'Nao gostei do Atendimento ')

INSERT INTO Consulta(IdMedico,IdPaciente,IdComentario,[Data],Hora,Prontuario)
VALUES ('5', '5', '4', '2023/08/18', '12:00:00', 'Consulta Realizada Sem Nada')


SELECT * FROM Comentario