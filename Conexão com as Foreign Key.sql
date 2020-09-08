alter table public.disciplina 
add constraint disciplina_curso_fk 
foreign key (id_curso) 
references public.curso (id_curso);

alter table public.curso 
add constraint curso_instituicao_fk 
foreign key (id_instituicao) 
references public.instituicao(id_instituicao);

alter table public.turma
add constraint turma_disciplina_fk
foreign key (id_disciplina)
references public.disciplina(id_disciplina);

alter table public.turma
add constraint turma_aluno_fk
foreign key (id_aluno)
references public.aluno(id_aluno);