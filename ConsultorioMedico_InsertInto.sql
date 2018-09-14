USE Consultorio_Medico

INSERT INTO medico (id, nome, crm, cpf) VALUES

(1, 'Claudionor', '45659-5', '196.555.784-6'),
(2, 'Ilmar', '5621-0', '148.258.666-5'),
(3, 'Petrônio', '1285-9', '165.236.529-6');

INSERT INTO sala (id, descricao) VALUES

(1, 'Sala de Espera'),
(2, 'Sala de Preparação'),
(3, 'Sala de Raio-X'),
(4, 'Sala de Consulta'),
(5, 'Sala de Vacinação');

INSERT INTO enfermeiro (id, nome, cpf) VALUES

(1, 'Sarah', '189.645.155-8'),
(2, 'Gestrônio', '125.458.632-7'),
(3, 'Laurindo', '145.528.657-2');

INSERT INTO maquina (id, nome) VALUES

(1, 'Tomógrafo'),
(2, 'Raio-X'),
(3, 'Ultrassom');

INSERT INTO atendente (id, nome, cpf) VALUES

(1, 'Lauro', '188.257.456-2'),
(2, 'Joca', '122.354.789-3'),
(3, 'Tulla', '415.785.254-1');

INSERT INTO paciente (id, nome, descricao_estado) VALUES

(1, 'Creuza', 'estável'),
(2, 'Zezé', 'péssimo'),
(3, 'Frederico', 'necessita cuidados');

INSERT INTO plano (id, descricao, valor) VALUES

(1, 'Premium', 600),
(2, 'Básico', 50),
(3, 'Médio', 300);

INSERT INTO consulta (id, diagnostico, data, hora, id_sala, id_medico, id_atendente, id_paciente) VALUES

(1, 'O paciente apresenta uma fratura na clavícula', '2000-06-15', '15:00', 3, 1, 3, 1),
(2, 'O paciente precisa de uma injeção nas nádegas', '2018-02-16', '00:00', 5, 2, 1, 2),
(3, 'O paciente está em condições normais', '2007-03-14', '16:00', 4, 3, 2, 3);

INSERT INTO enfermeiro_consulta (id_enfermeiro, id_consulta) VALUES

(1,1),
(1,2),
(1,3),
(2,1),
(2,2),
(2,3),
(3,1),
(3,2),
(3,3);

INSERT INTO plano_paciente (id_plano, id_paciente, data_inicio, data_termino) VALUES

(1, 1, '2001-06-15', '2018-06-15'),
(1, 2, '1999-06-15', '2007-06-15'),
(1, 3, '2003-06-15', '2010-06-15'),
(2, 1, '2005-06-15', '2015-06-15'),
(2, 2, '2000-06-15', '2004-06-15'),
(2, 3, '2015-06-15', '2018-06-15'),
(3, 1, '2003-06-15', '2005-06-15'),
(3, 2, '2001-06-15', '2016-06-15'),
(3, 3, '2006-06-15', '2009-06-15');

INSERT INTO maquina_consulta (id_maquina, id_consulta) VALUES

(1,1),
(1,2),
(1,3),
(2,1),
(2,2),
(2,3),
(3,1),
(3,2),
(3,3);

SELECT * FROM consulta;
SELECT * FROM medico;
SELECT * FROM sala;
SELECT * FROM plano;
SELECT * FROM maquina;
SELECT * FROM enfermeiro;
SELECT * FROM atendente;
SELECT * FROM paciente;
SELECT * FROM enfermeiro_consulta;
SELECT * FROM plano_paciente;
SELECT * FROM maquina_consulta;
