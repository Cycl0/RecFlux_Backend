use Recflux

insert into cliente (cpf_cnpj, nome, data_nasc, cep, cidade, estado, email, rg) values
('12345678901', 'João da Silva', '1980-01-01', '01000-000', 'São Paulo', 'SP', 'joao@gmail.com', '12345678'),
('98765432100', 'Maria Santos', '1990-02-02', '02000-000', 'Rio de Janeiro', 'RJ', 'maria@hotmail.com', '87654321'),
('11122233344', 'Pedro Oliveira', '2000-03-03', '03000-000', 'Belo Horizonte', 'MG', 'pedro@yahoo.com', '11223344');

insert into projeto (cpf_cnpj_cliente, data_criacao, descricao, status) values
('12345678901', '2023-01-01', 'Desenvolvimento de um site de e-commerce', 'Em andamento'),
('98765432100', '2023-02-01', 'Criação de um aplicativo móvel de delivery', 'Concluído'),
('11122233344', '2023-03-01', 'Análise de dados de uma pesquisa de mercado', 'Cancelado');

insert into assinatura (id_projeto, validade, plano) values
(1, '2023-12-31', 'Básico'),
(2, '2023-06-30', 'Premium'),
(3, '2023-04-30', 'Gratuito');

insert into palavra_chave (nome) values
('botao'),
('menu'),
('formulario'),
('cabecalho'),
('pesquisa'),
('informacao');

insert into dados_coletados_componente (clicks, tempo_uso, ranking, data_coleta, tipo) values
(100, 60, 5, '2023-01-15', 'Botão'),
(250, 30, 4, '2023-02-15', 'Menu'),
(25, 15, 3, '2023-03-15', 'Formulário');

insert into dados_coletados_componente_palavra_chave (id_dados_coletados_componente, id_palavra_chave) values
(1, 4),
(2, 2),
(3, 6);

insert into fluxo (id_projeto, id_dados_coletados_componente_palavra_chave) values
(1, 1),
(2, 2),
(3, 3);

insert into feedback_usuario (id_fluxo, descricao, nota) values
(1, 'Bom', 8),
(2, 'Ruim', 3),
(3, 'Excelente', 10);