# Notícias — Especificação de requisitos (ESP-MOD5-01)
**Autor:** Paulo de Tarso Rezende Lôbo · **Revisor:** a registrar após revisão. **Estado:** minuta verificável baseada na versão cliente inspecionada.
## 1. Requisitos funcionais
| ID | Declaração | Origem | Verificação |
|---|---|---|---|
| RF-MOD5-01 | O aplicativo deve disponibilizar a funcionalidade Notícias com título identificável e controle de retorno. | EV-01, UC-01 | Abrir módulo e observar título/retorno. |
| RF-MOD5-02 | Ao entrar em Notícias, o aplicativo deve solicitar a primeira página de notícias para cada regional configurada. | EV-02/03, UC-01 | Inspecionar inicialização e requisições. |
| RF-MOD5-03 | O aplicativo deve agrupar notícias retornadas por regional, identificando o grupo pelo nome da regional. | EV-04, UC-01 | Conferir regional e cartões vinculados. |
| RF-MOD5-04 | Cada cartão de notícia deve apresentar imagem disponível, título e resumo. | EV-05, UC-01 | Inspecionar atributos exibidos. |
| RF-MOD5-05 | Ao alcançar o final da listagem, o aplicativo deve solicitar a página seguinte e acrescentar os itens retornados aos grupos correspondentes. | EV-06, UC-02 | Rolar até o fim e verificar paginação/acréscimo. |
| RF-MOD5-06 | Quando a consulta inicial não retornar notícias, o aplicativo deve exibir mensagem textual de ausência de notícias. | EV-07, UC-01 | Simular retorno sem registros; conferir mensagem. |
| RF-MOD5-07 | Ao tocar em uma notícia, o aplicativo deve abrir o endereço específico do item selecionado em visualizador web, utilizando sua regional e slug. | EV-08, UC-03 | Abrir dois itens e conferir destinos diferentes corretos. |
| RF-MOD5-08 | Em erro de obtenção das notícias, o aplicativo deve encerrar a sinalização de carregamento e apresentar alerta. | EV-09, UC-01/02 | Simular falha e observar estado de interface. |
**Prioridade proposta:** obrigatória para RF-01 a 08, pois descrevem operações fundamentais do fluxo identificado; priorização ainda depende de aceitação pelo grupo.
## 2. Requisitos de dados
| ID | Especificação | Fonte |
|---|---|---|
| RD-MOD5-01 | Regional identificada por id, nome e URL base para composição de endereço. | EV-03/04/08 |
| RD-MOD5-02 | Notícia resumida contendo imagem, título, resumo e slug. | EV-05/08 |
| RD-MOD5-03 | Consulta com id de regional, página e limite de 10 itens solicitado em cada página. | EV-03 |
| RD-MOD5-04 | Coleção de resultados associada às regionais, capaz de receber itens de páginas adicionais. | EV-04/06 |
## 3. Características de qualidade e interface
**RQ-MOD5-01 — Recuperabilidade:** erro de consulta deve liberar o estado de carregamento e permitir que o aplicativo continue utilizável (origem: EV-09).  
**RQ-MOD5-02 — Integridade da navegação:** seleção de um cartão deve usar os dados daquele item, não os de outro registro (origem: RF-07).  
**RQ-MOD5-03 — Compreensibilidade:** agrupamentos devem apresentar seus nomes e o estado vazio deve ter mensagem textual (origem: EV-04/07).  
**Acessibilidade:** avaliar na revisão independente nomes acessíveis para cartões, ordem de foco e legibilidade; a inspeção estática não comprova conformidade com WCAG/e-MAG, e não se atribui índice ou nota artificial.  
Não foram inventados tempos de resposta, disponibilidade ou requisitos de notificação e busca que a implementação inspecionada não demonstrou.
## 4. Dependências e rastreabilidade
| Requisito | Fonte EL | Caso de uso | Verificação |
|---|---|---|---|
| RF-01 | EV-01 | UC-01 | CT-01 |
| RF-02 | EV-02/03 | UC-01 | CT-02 |
| RF-03 | EV-04 | UC-01 | CT-03 |
| RF-04 | EV-05 | UC-01 | CT-04 |
| RF-05 | EV-06 | UC-02 | CT-05 |
| RF-06 | EV-07 | UC-01 | CT-06 |
| RF-07 | EV-08 | UC-03 | CT-07 |
| RF-08 | EV-09 | UC-01/02 | CT-08 |
Todos os IDs das tabelas são prefixados com `MOD5`; CTs definidos em VAL-MOD5-01.
## Referências
EL-MOD5-01; AN-MOD5-01; UFG, APS INF0339 2026/2; aplicativo Minha UFG, `chunk-B77HEVFE.js` extraído do APK, 22/10/2026. Conteúdo sistematizado com OpenAI ChatGPT: incluir prompts completos no apêndice da equipe.
