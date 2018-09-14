USE Consultorio_Medico

CREATE TABLE medico (

id INT,
nome VARCHAR(50),
crm VARCHAR(30),
cpf VARCHAR(30)
PRIMARY KEY(id)

);

CREATE TABLE sala (

id INT,
descricao VARCHAR(100)
PRIMARY KEY(id)

);

CREATE TABLE enfermeiro (

id INT,
nome VARCHAR(50),
cpf VARCHAR(30)
PRIMARY KEY(id)

);

CREATE TABLE maquina (

id INT,
nome VARCHAR(50)
PRIMARY KEY(id)

);

CREATE TABLE atendente (

id INT,
nome VARCHAR(50),
cpf VARCHAR(30)
PRIMARY KEY(id)

);

CREATE TABLE paciente (

id INT,
nome VARCHAR(50),
descricao_estado VARCHAR(100)
PRIMARY KEY(id)

);


CREATE TABLE plano (

id INT,
descricao VARCHAR(100),
data_inicio DATE,
data_termino DATE,
valor FLOAT
PRIMARY KEY(id)

);
ALTER TABLE plano
DROP COLUMN data_inicio;

ALTER TABLE plano
DROP COLUMN data_termino;

CREATE TABLE consulta (

id INT,
diagnostico VARCHAR(100),
data DATE,
hora TIME,
id_sala INT,
id_medico INT,
id_atendente INT,
id_paciente INT
PRIMARY KEY(id)
FOREIGN KEY(id_sala) REFERENCES sala(id),
FOREIGN KEY(id_medico) REFERENCES medico(id),
FOREIGN KEY(id_atendente) REFERENCES atendente(id),
FOREIGN KEY(id_paciente) REFERENCES paciente(id)

);
ALTER TABLE consulta
ALTER COLUMN id_sala INT Not Null;

ALTER TABLE consulta
ALTER COLUMN id_medico INT Not Null;

ALTER TABLE consulta
ALTER COLUMN id_atendente INT Not Null;

ALTER TABLE consulta
ALTER COLUMN id_paciente INT Not Null;

CREATE TABLE enfermeiro_consulta (

id_enfermeiro INT,
id_consulta INT
PRIMARY KEY(id_enfermeiro, id_consulta)
FOREIGN KEY(id_enfermeiro) REFERENCES enfermeiro(id),
FOREIGN KEY(id_consulta) REFERENCES consulta(id)

);

ALTER TABLE enfermeiro_consulta
ALTER COLUMN id_enfermeiro INT Not Null;

ALTER TABLE enfermeiro_consulta
ALTER COLUMN id_consulta INT Not Null;

CREATE TABLE plano_paciente (

id_plano INT,
id_paciente INT
PRIMARY KEY(id_plano, id_paciente)
FOREIGN KEY(id_plano) REFERENCES plano(id),
FOREIGN KEY(id_paciente) REFERENCES paciente(id)

);
ALTER TABLE plano_paciente
ADD data_inicio DATE;

ALTER TABLE plano_paciente
ADD data_termino DATE;

ALTER TABLE plano_paciente
ALTER COLUMN id_plano INT Not Null;

ALTER TABLE plano_paciente
ALTER COLUMN id_paciente INT Not Null;

CREATE TABLE maquina_consulta (

id_maquina INT,
id_consulta INT
PRIMARY KEY(id_maquina, id_consulta)
FOREIGN KEY(id_maquina) REFERENCES maquina(id),
FOREIGN KEY(id_consulta) REFERENCES consulta(id)

);

ALTER TABLE maquina_consulta
ALTER COLUMN id_maquina INT Not Null;

ALTER TABLE maquina_consulta
ALTER COLUMN id_consulta INT Not Null;