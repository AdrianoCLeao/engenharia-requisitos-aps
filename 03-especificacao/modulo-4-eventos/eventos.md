# Eventos — Especificação de requisitos (ESP-MOD4-01)
**Objeto:** versão observada do módulo Eventos do aplicativo móvel Minha UFG.  
**Autor:** Paulo de Tarso Rezende Lôbo · **Revisor independente:** a registrar após execução.  
**Fontes:** EL-MOD4-01 e AN-MOD4-01, enunciado APS INF0339. **Estado:** especificação para revisão cruzada.

## 1. Convenções
Cada requisito apresenta identificador, declaração, prioridade técnica proposta (Obrigatório/Desejável), origem e verificação. “Deve” descreve comportamento de referência da versão investigada; defeitos observados não são apresentados como funcionalidades pretendidas. Requisitos novos de melhoria estão separados no §5, fora da linha de base do produto atual.

## 2. Requisitos funcionais
### RF-MOD4-01 — Acessar Eventos
**Declaração:** O aplicativo deve disponibilizar o acesso à funcionalidade Eventos, apresentando um calendário e a lista de eventos associada à data inicialmente selecionada.  
**Prioridade:** Obrigatório. **Origem:** EV-MOD4-01/02/04; UC-MOD4-01.  
**Verificação:** abrir o módulo e confirmar calendário, dia destacado e apresentação de resultados após a consulta.

### RF-MOD4-02 — Navegar por meses
**Declaração:** O calendário deve permitir avançar e retroceder um mês por acionamento, ajustando o ano quando atravessar os limites de dezembro e janeiro e atualizando a consulta.  
**Prioridade:** Obrigatório. **Origem:** EV-MOD4-03/04; UC-MOD4-01.  
**Verificação:** navegar de dezembro a janeiro e de janeiro a dezembro; conferir mês/ano e atualização dos resultados.

### RF-MOD4-03 — Selecionar dia
**Declaração:** O calendário deve permitir selecionar os dias pertencentes ao mês apresentado, destacando a seleção e consultando os eventos para a data resultante.  
**Prioridade:** Obrigatório. **Origem:** EV-MOD4-05/06; UC-MOD4-01.  
**Verificação:** selecionar dois dias válidos distintos; conferir destaque e nova consulta. Dias auxiliares de outros meses não devem ser tratados como selecionáveis no componente inspecionado.

### RF-MOD4-04 — Apresentar eventos por regional
**Declaração:** O módulo deve apresentar os resultados da consulta agrupados pela regional associada, exibindo em cada cartão o nome do evento, imagem disponível e datas de início e término.  
**Prioridade:** Obrigatório. **Origem:** EV-MOD4-07/09; UC-MOD4-01.  
**Verificação:** comparar resultados para data com eventos com os agrupamentos e atributos mostrados na interface.

### RF-MOD4-05 — Apresentar estado sem eventos
**Declaração:** Se a consulta concluir sem eventos para a data selecionada, o módulo deve apresentar mensagem explícita indicando ausência de eventos para esse dia.  
**Prioridade:** Obrigatório. **Origem:** EV-MOD4-08; UC-MOD4-01.  
**Verificação:** consultar data com resultado vazio; conferir texto do estado vazio, sem confundi-lo com indisponibilidade do serviço.

### RF-MOD4-06 — Abrir a página do evento selecionado
**Declaração:** Ao selecionar um cartão, o aplicativo deve solicitar a abertura da página correspondente ao evento selecionado, usando os dados de identificação do evento e sua regional no visualizador web.  
**Prioridade:** Obrigatório. **Origem:** EV-MOD4-09/10; UC-MOD4-02.  
**Verificação:** escolher dois eventos distintos, verificar que cada ação abre o detalhe correspondente e não a página do outro evento.

### RF-MOD4-07 — Informar carregamento
**Declaração:** Durante o início de uma consulta de eventos, o aplicativo deve apresentar indicação de carregamento; após a conclusão ou erro tratado, deve encerrar essa indicação.  
**Prioridade:** Obrigatório. **Origem:** EV-MOD4-02; código `fetchEventos`; ACH-MOD4-01.  
**Verificação:** observar abertura/fechamento do indicador em resposta normal e de erro; registrar não conformidade quando persistir.

## 3. Requisitos de dados
| ID | Declaração | Evidência |
|---|---|---|
| RD-MOD4-01 | Uma data consultada contém dia, mês e ano usados como parâmetros de início e fim na chamada observada. | EV-MOD4-04–06 |
| RD-MOD4-02 | Cada regional da consulta possui identificador, nome de apresentação e endereço base para abertura de conteúdo. | EV-MOD4-06/07/10 |
| RD-MOD4-03 | Cada cartão de evento utiliza nome, referência de imagem, datas de início/fim e identificador `slug` para acesso à página específica. | EV-MOD4-09/10 |
| RD-MOD4-04 | Um resultado de consulta associa cada regional aos eventos retornados para a data consultada. | EV-MOD4-07 |

## 4. Características de qualidade relevantes
| ID | Atributo | Critério observável | Origem |
|---|---|---|---|
| RQ-MOD4-01 | Recuperabilidade | A conclusão normal ou erro tratado de uma consulta não deve manter o indicador de carregamento bloqueando a interação em outras telas. | ACH-MOD4-01; RF-MOD4-07 |
| RQ-MOD4-02 | Correção funcional | O acionamento de um cartão não deve conduzir ao detalhe de outro evento. | RF-MOD4-06 |
| RQ-MOD4-03 | Usabilidade | O calendário deve distinguir visualmente o dia selecionado e apresentar estado vazio textual. | EV-MOD4-01/08 |
| RQ-MOD4-04 | Acessibilidade (verificação de cobertura) | Verificar identificação acessível e operação dos controles de navegação e datas com recursos assistivos do sistema. O material atual não autoriza declarar conformidade WCAG/e-MAG. | ACH-MOD4-04 |

**Nota sobre desempenho:** o levantamento verificou variabilidade de latência, mas não estabelece um valor contratual sustentado para tempo máximo ou percentil de resposta. Um alvo quantitativo dependeria de medição e decisão de interessados; não será inventado como requisito implementado.

## 5. Sugestões de evolução corretiva — não integram a linha de base atual
- **MEL-MOD4-01:** associar o carregamento ao ciclo de vida da tela e assegurar encerramento/cancelamento de solicitações ao abandoná-la.
- **MEL-MOD4-02:** impedir que respostas de consultas antigas substituam resultados de uma data selecionada posteriormente.
- **MEL-MOD4-03:** tratar timeout/rede com mensagem recuperável sem bloquear a navegação.
Essas recomendações decorrem dos achados de qualidade e são **propostas de melhoria**, não mudanças exigidas pela APS nem características comprovadamente implementadas.

## 6. Matriz de rastreabilidade
| Requisito | Elicitação | Análise | Cenário de verificação |
|---|---|---|---|
| RF-MOD4-01 | EV-01/02/04 | UC-MOD4-01 | CT-MOD4-01 |
| RF-MOD4-02 | EV-03/04 | UC-MOD4-01, RN-02 | CT-MOD4-02 |
| RF-MOD4-03 | EV-05/06 | UC-MOD4-01, RN-01 | CT-MOD4-03 |
| RF-MOD4-04 | EV-07/09 | UC-MOD4-01 | CT-MOD4-04 |
| RF-MOD4-05 | EV-08 | UC-MOD4-01 | CT-MOD4-05 |
| RF-MOD4-06 | EV-09/10 | UC-MOD4-02, RN-05 | CT-MOD4-06 |
| RF-MOD4-07 | EV-02/11 | UC-MOD4-01 | CT-MOD4-07 |

**IDs EV abreviados nesta tabela significam EV-MOD4-XX.**

## Referências
UFG, *Definição de APS INF0339*, 2026/2; EL-MOD4-01; AN-MOD4-01; APK Android Minha UFG, inspeção estática com JADX em 22/10/2026. Uso de ChatGPT na organização e modelagem: registrar integralmente prompts aplicáveis no apêndice de IA antes da entrega.
