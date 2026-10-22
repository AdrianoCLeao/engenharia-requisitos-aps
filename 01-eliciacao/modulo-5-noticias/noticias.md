# Notícias — Eliciação (EL-MOD5-01)
**APS INF0339 · Equipe Leste · Autor do artefato:** Paulo de Tarso Rezende Lôbo · **Revisor:** a designar/registrar quando executar a revisão. **Data:** 22/10/2026.
## 1. Objeto e técnica
Levantamento do módulo Notícias do app móvel Minha UFG por **inspeção estática** do APK Android fornecido pelo autor (`br.ufg.minhaufg`), descompilado via JADX. Escopo oficial: acompanhar acontecimentos das regionais da UFG por meio de notícias atualizadas. Fonte técnica: `resources/assets/public/chunk-B77HEVFE.js`; consultas adicionais necessárias para observação dinâmica/validação. Não foram realizadas entrevistas nem testes de tela de Notícias nesta etapa.
## 2. Evidências de implementação
| ID | Comportamento identificável no cliente | Ponto de inspeção |
|---|---|---|
| EV-MOD5-01 | A página exibe cabeçalho “Notícias” e controle de retorno à tela inicial. | Template de `NoticiasPage` |
| EV-MOD5-02 | A inicialização chama `fetchNews()`, com página corrente inicialmente igual a 1. | `ngOnInit`, `currentPage` |
| EV-MOD5-03 | O serviço consulta `/noticias` com `id_regional`, `page` e `page_size=10`. | `getNewsPorRegional` |
| EV-MOD5-04 | O cliente consulta as regionais configuradas e apresenta grupos somente quando possuem notícias. | `fetchNews` |
| EV-MOD5-05 | Cada item da lista recebe imagem, título e resumo do retorno. | Template `item-noticia` |
| EV-MOD5-06 | O fim da rolagem incrementa a página e solicita mais notícias, agregando resultados aos grupos existentes. | `onScrollEnd`, `fetchNews` |
| EV-MOD5-07 | Quando a coleção está vazia, apresenta “Nenhuma notícia disponível no momento.” | Template `sem-noticias` |
| EV-MOD5-08 | Ao selecionar item, o cliente monta `<url-regional>/n/<slug>` e abre visualizador web integrado. | `openNoticiaPage` |
| EV-MOD5-09 | Erros de consulta encerram estado de carregamento e acionam alerta; o cliente também prevê alerta para falhas de conexão/timeout na abertura do item. | `fetchNews`, `openNoticiaPage` |
## 3. Informações de domínio
**Regional:** identificador, nome e endereço de portal. **Notícia:** imagem, título, resumo, slug. **Consulta paginada:** regional, número de página e tamanho de página. O código analisado não comprova, por si só, ordenação editorial, data de publicação, atualização em tempo real ou existência de filtro editável pelo usuário.
## 4. Limites do levantamento
A API e seus critérios de ordenação, conteúdo/editoria e disponibilidade são externos ao aplicativo cliente. A inspeção estática não confirma funcionamento efetivo em rede, desempenho, comportamento de todas as plataformas ou acessibilidade por leitor de tela. Essa distinção não altera os requisitos técnicos sustentados acima; orienta a revisão e os testes de aceitação.
## Referências
UFG, *Definição da APS INF0339*, 2026/2, Apêndice A; aplicativo Minha UFG, APK Android extraído em 22/10/2026; inspeção de `chunk-B77HEVFE.js` com JADX. Documentação preparada com auxílio de OpenAI ChatGPT; prompts utilizados deverão ser transcritos integralmente na referência/apêndice de IA da equipe.
