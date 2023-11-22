# RecFlux_Backend
Projeto de Exetensão Instituto Federal de São Paulo (IFSP) - Recflux Framework Web

## Propósito
Protótipo basico da ideia do banco de dados voltado para o website no qual os clientes (donos dos sites que usam a ferramenta) irão gerenciar suas assinaturas e verificar dados de web analytics voltados para a interação dos usuários com os componentes do site usando a Framework.
Esses dados coletados serão usados para otimizar automaticamente a estrutura do website ou apenas dar sugestões ou ter opções (trilhas) que usuário poderá escolher. Essas trilhas criadas com os dados com o intermédio de modelos de inteligência artificial serão otimizadas para o UI/UX e exerceram influência no próprio design ou estrutura dos websites utilizando a ferramenta.

## Entidades e suas tabelas
| Tabela | Campo | Tipo | Descrição |
| --- | --- | --- | --- |
| cliente | cpf_cnpj | nvarchar(15) | O número de identificação do cliente, que é a chave primária da tabela |
| cliente | nome | nvarchar(40) | O nome do cliente |
| cliente | data_nasc | date | A data de nascimento do cliente |
| cliente | cep | nvarchar(10) | O código postal do cliente |
| cliente | cidade | nvarchar(20) | A cidade do cliente |
| cliente | estado | nvarchar(20) | O estado do cliente |
| cliente | email | nvarchar(40) | O endereço de email do cliente |
| cliente | rg | varchar(10) | O número de registro geral do cliente |
| projeto | id | int | O número de identificação do projeto, que é a chave primária da tabela e é gerado automaticamente |
| projeto | cpf_cnpj_cliente | nvarchar(15) | O número de identificação do cliente que criou o projeto, que é uma chave estrangeira que referencia a tabela cliente |
| projeto | data_criacao | date | A data de criação do projeto |
| projeto | descricao | nvarchar(100) | A descrição do projeto |
| projeto | status | nvarchar(20) | O status do projeto, que pode ser ativo, inativo, concluído, etc. |
| assinatura | id | int | O número de identificação da assinatura, que é a chave primária da tabela e é gerado automaticamente |
| assinatura | id_projeto | int | O número de identificação do projeto que está associado à assinatura, que é uma chave estrangeira que referencia a tabela projeto |
| assinatura | validade | date | A data de validade da assinatura |
| assinatura | plano | nvarchar(15) | O plano da assinatura, que pode ser básico, premium, etc. |
| palavra_chave | id | int | O número de identificação da palavra-chave, que é a chave primária da tabela e é gerado automaticamente |
| palavra_chave | nome | nvarchar(40) | O nome da palavra-chave |
| dados_coletados_componente | id | int | O número de identificação dos dados coletados do componente, que é a chave primária da tabela e é gerado automaticamente |
| dados_coletados_componente | clicks | bigint | O número de cliques que o componente recebeu |
| dados_coletados_componente | tempo_uso | bigint | O tempo de uso do componente em segundos |
| dados_coletados_componente | ranking | int | O ranking do componente, que pode ser de 1 a 5 |
| dados_coletados_componente | data_coleta | date | A data em que os dados foram coletados |
| dados_coletados_componente | tipo | nvarchar(40) | O tipo do componente, que pode ser botão, imagem, texto, etc. |
| dados_coletados_componente_palavra_chave | id | int | O número de identificação da relação entre os dados coletados do componente e a palavra-chave, que é a chave primária da tabela e é gerado automaticamente |
| dados_coletados_componente_palavra_chave | id_dados_coletados_componente | int | O número de identificação dos dados coletados do componente, que é uma chave estrangeira que referencia a tabela dados_coletados_componente |
| dados_coletados_componente_palavra_chave | id_palavra_chave | int | O número de identificação da palavra-chave, que é uma chave estrangeira que referencia a tabela palavra_chave |
| fluxo | id | int | O número de identificação do fluxo, que é a chave primária da tabela e é gerado automaticamente |
| fluxo | id_projeto | int | O número de identificação do projeto que está associado ao fluxo, que é uma chave estrangeira que referencia a tabela projeto |
| fluxo | id_dados_coletados_componente_palavra_chave | int | O número de identificação da relação entre os dados coletados do componente e a palavra-chave, que é uma chave estrangeira que referencia a tabela dados_coletados_componente_palavra_chave |
| feedback_usuario | id | int | O número de identificação do feedback do usuário, que é a chave primária da tabela e é gerado automaticamente |
| feedback_usuario | id_fluxo | int | O número de identificação do fluxo que está associado ao feedback do usuário, que é uma chave estrangeira que referencia a tabela fluxo |
| feedback_usuario | descricao | nvarchar(40) | A descrição do feedback do usuário |
| feedback_usuario | nota | int | A nota do feedback do usuário, que pode ser de 1 a 5 |

Espero que isso te ajude. 😊
