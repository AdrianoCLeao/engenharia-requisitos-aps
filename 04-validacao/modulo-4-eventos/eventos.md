# Eventos — Plano de verificação e validação (VAL-MOD4-01)
**Autor:** Paulo de Tarso Rezende Lôbo · **Revisão cruzada:** ainda não executada.  
**Objetos:** EL-MOD4-01, AN-MOD4-01 e ESP-MOD4-01.

## 1. Método
A **verificação** examina completude, clareza, consistência, rastreabilidade e testabilidade dos artefatos. A **validação** compara a especificação com o comportamento observado do aplicativo e, quando possível, com apreciação de usuários/interessados. Os cenários abaixo são procedimentos planejados; não serão marcados como aprovados sem execução e evidência registradas.

## 2. Casos de verificação
| ID | Requisito | Procedimento | Resultado esperado | Estado |
|---|---|---|---|---|
| CT-MOD4-01 | RF-01 | Abrir app e tocar Eventos | Calendário e resultado da data inicial | Planejado |
| CT-MOD4-02 | RF-02 | Avançar de dezembro para janeiro e retroceder | Mês e ano corretos, nova consulta | Planejado |
| CT-MOD4-03 | RF-03 | Escolher dois dias válidos do mês | Data destacada e lista atualizada | Planejado |
| CT-MOD4-04 | RF-04 | Consultar data com eventos em regionais identificadas | Grupos e cartões correspondentes | Planejado |
| CT-MOD4-05 | RF-05 | Consultar data sem eventos retornados | Mensagem “Não há eventos para esse dia!” | Evidência observacional inicial; execução formal pendente |
| CT-MOD4-06 | RF-06 | Selecionar dois cartões de eventos distintos | Cada cartão abre seu próprio detalhe | Planejado |
| CT-MOD4-07 | RF-07 / RQ-01 | Consultar normalmente; repetir em cenário de falha de conexão; navegar para outra tela | Indicador encerra e não bloqueia telas externas | Evidência de não conformidade observacional ACH-MOD4-01; execução controlada pendente |
| CT-MOD4-08 | RQ-03/04 | Inspecionar seleção, foco e rótulos por leitor de tela e ampliação | Evidências de operação e identificação acessível | Planejado |
| CT-MOD4-09 | RQ-01 | Alternar rapidamente entre datas e meses durante consulta | Resultado final é coerente com seleção visível e interação permanece recuperável | Planejado |

**Modelo de execução de CT:** data e dispositivo; versão do app; conectividade; pré-condição; passos; resultado obtido; captura/log; executor; decisão (passou/falhou/bloqueado). Registros de observação existentes não substituem esse relatório controlado.

## 3. Checklist de revisão independente
- [ ] A fronteira do app está distinta da API e da página institucional?
- [ ] A seleção de dia e a navegação mensal estão coerentes com as evidências?
- [ ] Há cobertura de dados de regional, evento e data?
- [ ] Os diagramas comportamental e estrutural são coerentes com os requisitos?
- [ ] Cada RF descreve uma operação verificável?
- [ ] Exceções e estado vazio foram diferenciados?
- [ ] O comportamento inadequado de carregamento não foi descrito como requisito desejado?
- [ ] As dependências entre eventos, regionais, calendário e visualizador estão explícitas?
- [ ] Houve inspeção de legibilidade, foco e operação assistiva em vez de presumir conformidade?
- [ ] A origem e os vínculos das informações estão rastreáveis?
- [ ] O revisor é pessoa distinta do autor deste artefato?
- [ ] A referência ao uso de IA inclui prompts completos no apêndice antes da entrega?

## 4. Registro de revisão
| Campo | Preenchimento após execução |
|---|---|
| Revisor(a) e data | Pendente |
| Artefato / versão | Pendente |
| ID do achado | Pendente |
| Descrição objetiva e evidência | Pendente |
| Correção ou justificativa do autor | Pendente |
| Reverificação e parecer | Pendente |

## 5. Riscos e tratamento
**ACH-MOD4-01:** a observação de indicador persistente deve ser confrontada com resultado de CT-MOD4-07 antes de classificar conformidade. **Concorrência de requisições:** verificar CT-MOD4-09 para distinguir falha de interface de atraso remoto. **Agregação no backend:** o aplicativo cliente consulta por data, mas a aplicação do período de vigência de eventos ocorre no serviço e pode ser investigada com dados retornados; não existe prova direta do algoritmo servidor nesta inspeção.

## Referências
UFG, definição da APS INF0339, 2026/2, especialmente Apêndice B; EL-MOD4-01; AN-MOD4-01; ESP-MOD4-01. Preparação documental assistida por OpenAI ChatGPT; prompts completos deverão integrar o apêndice geral.
