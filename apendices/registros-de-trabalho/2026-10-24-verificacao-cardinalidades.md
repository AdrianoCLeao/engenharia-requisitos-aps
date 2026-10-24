# Verificação técnica de modelos — 24/10/2026

**Escopo:** Eventos e Notícias; verificação documental e de cardinalidades, sem execução do aplicativo nem aprovação por revisor independente.

## Resultados

| Item | Resultado |
|---|---|
| Casos de uso de Eventos e Notícias | Os atores e objetivos são compatíveis com os RFs definidos. |
| Eventos: cardinalidade | Corrigida no modelo de classes de `eventos.md`: consulta `1` → `0..*` grupos, grupo `1` → `1` regional e grupo `1` → `1..*` eventos. |
| Notícias: cardinalidade | Modelo verificado em `cardinalidades-verificadas.md`; consultar este documento conjuntamente com `noticias.md` até integrar a substituição do modelo simplificado. |
| Escopo dos relacionamentos | São vínculos de apresentação por consulta; não se afirma banco de dados, propriedade editorial ou composição permanente. |
| Coerência entre perspectivas | Consulta, regional, cartão e seleção de detalhe possuem correspondência com os casos de uso e requisitos de dados. |
| Diagramas de atividades | Mantidos como fluxogramas Mermaid; notação estritamente UML de atividades ainda requer ajuste. |
| Renderização PlantUML/Mermaid | Não foi executada compilação de renderização na nuvem nesta rodada; não declarar teste de compilação aprovado. |
| Revisão por outro integrante | Não executada; documentação técnica presente não substitui revisão cruzada. |

## Critérios semânticos

A existência de `0..*` grupos permite consulta vazia. O uso de `1..*` itens em um grupo é coerente com a regra de omitir grupos vazios. Um mesmo evento pode reaparecer em consultas por datas distintas; analogamente uma notícia pode aparecer em páginas e consultas distintas. Isso é distinto de impor titularidade permanente dos conteúdos a uma regional.

## Pendências finais

Renderizar e inspecionar os diagramas atualizados na versão final, corrigir as atividades para UML formal se forem apresentadas como tal, conferir os registros de testes e solicitar revisão cruzada com identificação de revisor e data.
