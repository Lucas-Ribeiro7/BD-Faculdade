---Criação das Tabelas

--Tabela Aluno
CREATE TABLE public.aluno
(
    id_aluno serial NOT NULL,
    nome character varying NOT NULL,
    data_nascimento date,
    cpf character varying,
    rg character varying,
    email character varying,
    matricula int,
    CONSTRAINT pk_aluno PRIMARY KEY (id_aluno)
)

tablespace pg_default;

alter table public.aluno
    owner to postgres;

--Tabela Curso   
CREATE TABLE public.curso
(
    id_curso serial NOT NULL,
    nome character varying NOT NULL,
    coordenador character varying,
    valor numeric(18,2),
    turno character varying COLLATE,
    id_instituicao int,
    CONSTRAINT pk_curso PRIMARY KEY (id_curso)
)
tablespace pg_default;

alter table public.curso
    owner to postgres;
    
--Tabela Instituição
CREATE TABLE public.instituicao
(
    id_instituicao serial NOT NULL,
    nome character varying NOT NULL,
    cnpj character varying NOT NULL,
    endereco character varying COLLATE,
    CONSTRAINT pk_instituicao PRIMARY KEY (id_instituicao)
)

tablespace pg_default;

alter table public.instituicao
    owner to postgres;
   
--Tabela Disciplina
create table disciplina
(
id_disciplina serial not null,
nome character varying not null,
id_curso int,
constraint pk_disciplina primary key (id_disciplina)
)
tablespace pg_default;

alter table public.disciplina
    owner to postgres;
    
--Tabela Turma
create table public.turma
(
id_turma serial not null,
id_aluno int,
id_disciplina int,
data_cadastro date,
constraint pk_turma primary key (id_turma)
)
tablespace pg_default;

alter table public.turma
	owner to postgres;