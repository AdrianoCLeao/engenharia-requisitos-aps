# Notícias — Análise e modelagem (AN-MOD5-01)
**Autor:** Paulo de Tarso Rezende Lôbo · **Revisor:** pendente de execução · **Fonte:** EL-MOD5-01.
## 1. Domínio, usuários e fronteira
O módulo Notícias permite consultar informações de acontecimentos associados às regionais da UFG. **Ator principal:** usuário do aplicativo móvel, seja membro da comunidade UFG ou visitante interessado; autenticação não é exigida pelo fluxo identificado no componente estudado. **Stakeholders:** leitores das notícias, regionais e unidades divulgadoras, responsáveis editoriais institucionais e equipes mantenedoras do serviço de conteúdo. Os dois últimos grupos não são automaticamente atores do aplicativo: produção e administração editorial pertencem a sistemas externos. **Fronteira do módulo:** solicitar páginas, organizar grupos por regional, exibir resumo e abrir página do item. Fora da fronteira: publicação, revisão editorial e armazenamento dos textos completos no portal.
## 2. Casos de uso
**UC-MOD5-01 — Consultar notícias das regionais.** Ator: usuário. Gatilho: abrir Notícias. Principal: inicializar página 1; consultar notícias por regional; apresentar grupos com título e cartões com imagem/título/resumo. Alternativa: exibir mensagem de ausência quando o resultado agregado estiver vazio. Exceção: falha de requisição, alerta ao usuário.  
**UC-MOD5-02 — Carregar notícias adicionais.** Ator: usuário. Gatilho: alcançar final da lista. Principal: incrementar página; consultar mais registros; acrescentar notícias às coleções já exibidas ou criar grupo de regional quando necessário. Exceção: falha da nova consulta, aviso ao usuário.  
**UC-MOD5-03 — Abrir notícia.** Ator: usuário. Gatilho: selecionar um cartão. Principal: obter URL base da regional e slug; construir endereço `/n/<slug>`; solicitar exibição em webview. Exceção: indisponibilidade de conexão/timeout, exibir alerta.
## 3. UML — casos de uso

![Diagrama UML de casos de uso — Notícias](./diagramas/noticias-casos-de-uso.svg)

**Fonte editável:** [noticias-casos-de-uso.puml](./noticias-casos-de-uso.puml). O usuário consulta notícias, carrega resultados adicionais e abre a notícia selecionada no aplicativo.

## 4. UML — atividade
```mermaid
flowchart TD
 A([Entrar em Notícias]) --> B[Inicializar página 1]
 B --> C[Consultar lista por regional]
 C --> D{Requisição concluiu?}
 D -->|Erro| E[Indicar falha]
 D -->|Sim| F{Há notícias?}
 F -->|Não| G[Exibir ausência]
 F -->|Sim| H[Exibir grupos e cartões]
 H --> I{Ação do usuário}
 I -->|Rolar ao fim| J[Incrementar página e consultar novamente]
 J --> K[Acrescentar resultados por regional]
 K --> H
 I -->|Selecionar notícia| L[Abrir URL específica no webview]
```
## 5. UML — classes conceituais
```mermaid
classDiagram
 class Regional {
   id
   nome
   url
 }
 class Noticia {
   titulo
   resumo
   imagem
   slug
 }
 class ConsultaNoticias {
   pagina
   tamanhoPagina
 }
 Regional "1" --> "0..*" Noticia : agrupa no resultado
 ConsultaNoticias ..> Regional : usa id
```
Modelo conceitual de resultado, não afirma banco, regras editoriais nem persistência local.
## 6. Regras e dependências
| ID | Análise | Evidências |
|---|---|---|
| RN-MOD5-01 | A consulta informa regional, página e quantidade de até 10 notícias solicitadas por página. | EV-03 |
| RN-MOD5-02 | Na primeira página, grupos são reconstruídos; páginas posteriores agregam registros aos grupos existentes. | EV-04/06 |
| RN-MOD5-03 | Só são exibidos grupos com ao menos uma notícia no resultado. | EV-04 |
| RN-MOD5-04 | A URL de uma notícia usa URL base da regional e `slug` do item acionado. | EV-08 |
Dependências externas: catálogo das regionais, serviço HTTP de notícias, rede e portal/webview. **IHC:** título de página, distinção dos agrupamentos, informações resumidas e indicador de carregamento são os elementos observáveis; recomenda-se inspeção de legibilidade e tecnologia assistiva, sem declarar certificação de acessibilidade.
## 7. Conferência de consistência entre as perspectivas
| Comportamento | Dados do modelo de classes | Requisitos | Situação |
|---|---|---|---|
| UC-MOD5-01 — obter e agrupar notícias | Regional.id/nome, Noticia.titulo/resumo/imagem | RF-MOD5-02/03/04; RD-MOD5-01/02 | Coerente com código e imagens das quatro regionais |
| UC-MOD5-02 — carregar próxima página | ConsultaNoticias.pagina/tamanhoPagina; coleção por regional | RF-MOD5-05; RD-MOD5-03/04 | Evidência do código; execução dinâmica a conferir |
| UC-MOD5-03 — abrir notícia | Regional.url, Noticia.slug | RF-MOD5-07; RD-MOD5-01/02 | Evidência do código; URLs de destino a conferir |
| Alternativa sem resultados | Resultado vazio | RF-MOD5-06 | Evidência do template; captura de estado vazio pendente |
| Falha da consulta | Estado de carregamento/alerta | RF-MOD5-08; RQ-MOD5-01 | Exceção especificada, sem teste de erro executado |

**Limite de escopo:** as quatro regionais observadas são agrupamentos do conteúdo apresentado; o fato de haver notícias da UFJ e UFCAT não permite concluir que essas instituições sejam unidades administrativas da UFG hoje. O modelo não atribui ao aplicativo a edição de notícias. Os três casos de uso cobrem os fluxos descritos pelos oito requisitos funcionais, não são oito diagramas isolados.

## 8. Rastreabilidade
UC-MOD5-01 ↔ EV-MOD5-01–05/07/09; UC-MOD5-02 ↔ EV-MOD5-03/06; UC-MOD5-03 ↔ EV-MOD5-08/09. Requisitos detalhados: ESP-MOD5-01.
## Referências
EL-MOD5-01; UFG, APS INF0339 2026/2; análise estática do arquivo `chunk-B77HEVFE.js` (22/10/2026). Uso de IA: consolidar os prompts aplicáveis no apêndice geral.
