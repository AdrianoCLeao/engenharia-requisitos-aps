# Notícias — Verificação e validação planejadas (VAL-MOD5-01)
**Autor:** Paulo de Tarso Rezende Lôbo · **Revisor externo ao item:** a definir / preencher quando efetivamente realizado.
## 1. Critérios de revisão
Verificar correspondência do conteúdo com o escopo oficial da APS, fontes, correção de fronteira entre cliente e serviço editorial, consistência das visões estrutural/comportamental, clareza, rastreabilidade, testabilidade e relevância. A validação humana e a execução dos testes abaixo não foram realizadas nesta documentação.
## 2. Casos de verificação
| ID | Requisito | Procedimento e expectativa | Situação |
|---|---|---|---|
| CT-MOD5-01 | RF-01 | Entrar em Notícias e testar título e controle de retorno. | Planejado |
| CT-MOD5-02 | RF-02 | Entrar em Notícias; verificar consultas à página 1 de cada regional configurada. | Planejado |
| CT-MOD5-03 | RF-03 | Inspecionar lista com itens de diferentes regionais; conferir nome e agrupamento. | Planejado |
| CT-MOD5-04 | RF-04 | Inspecionar cartão e conferir imagem, título e resumo fornecidos. | Planejado |
| CT-MOD5-05 | RF-05 | Rolar ao final; confirmar carregamento de itens adicionais. | **Observação positiva relatada pelo autor em 24/10/2026:** rolagem prolongada exibiu carregamento e acrescentou notícias. O número exato por regional/página não foi medido. |
| CT-MOD5-06 | RF-06 | Simular resultado inicial vazio; conferir texto de ausência. | Planejado |
| CT-MOD5-07 | RF-07 | Selecionar dois itens; conferir URLs e detalhes correspondentes. | Planejado |
| CT-MOD5-08 | RF-08 | Simular falha na API, verificar alerta e liberação do carregamento. | Planejado |
| CT-MOD5-09 | RQ-03 / IHC | Conferir compreensibilidade e navegação por leitor de tela/zoom. | Planejado |
## 2.1. Complemento da observação funcional em 24/10/2026

O autor observou o cabeçalho verde com título **Notícias**, seta de retorno, agrupamentos por regional/cidade e cartões com **imagem, título e resumo**. Ao rolar uma lista com mais de 30 cartões, observou carregamento adicional, coerente com o mecanismo de paginação identificado no cliente Android.

A implementação solicita **até 10 itens por página de cada regional**; isso não estabelece limite global de 10 cartões na tela. Abrir uma notícia mostrou navegação para conteúdo web **dentro do aplicativo**, com carregamento perceptível. Sem conexão, o conteúdo não foi obtido; não foi confirmada mensagem específica de indisponibilidade.

**Registro:** observação do autor comunicada em 24/10/2026; nenhum teste instrumental de API, medição estatística de desempenho ou validação por revisor independente foi realizado nesta atualização.

## 3. Checklist da revisão cruzada
- [ ] Há identificação de autor e revisor independente? 
- [ ] O objetivo da funcionalidade corresponde à categoria Notícias do Apêndice A?
- [ ] Atores do app e responsáveis editoriais externos estão corretamente separados?
- [ ] A análise UML apresenta associações, dados e fluxos coerentes?
- [ ] Todos os requisitos são inequívocos, necessários e verificáveis?
- [ ] Nenhuma função não demonstrada (busca, notificações, filtros editáveis) foi apresentada como implementada?
- [ ] Há vínculo EL → AN → ESP → VAL por identificador?
- [ ] Os cenários possuem resultados medidos e evidências antes de serem considerados aprovados?
- [ ] Foram incluídos os prompts completos de IA no apêndice da equipe?
## 4. Parecer de revisão — ficha
**Revisor e data:** ___ · **Artefato/versão:** ___ · **Achado:** ___ · **Evidência:** ___ · **Orientação:** ___ · **Tratamento pelo autor:** ___ · **Reverificação:** ___.
## Referências
UFG, Definição de APS INF0339 (2026/2), Apêndice B; EL-MOD5-01; AN-MOD5-01; ESP-MOD5-01. Preparação com OpenAI ChatGPT a ser referenciada com prompts completos.
