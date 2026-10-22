# Eventos — Eliciação de requisitos (EL-MOD4-01)
**Disciplina:** INF0339 — Engenharia de Requisitos, 2026/2 · **Equipe:** Leste  
**Responsável pelo levantamento:** Paulo de Tarso Rezende Lôbo · **Revisão por par:** a registrar após execução  
**Objeto:** aplicativo móvel Minha UFG, módulo Eventos · **Ambiente observado:** Android, versão exibida 3.1.1 · **Registro:** 22/10/2026

## 1. Objetivo e escopo
Identificar as características da funcionalidade existente de consulta a eventos da UFG por regional e data, abrangendo calendário, listagem de eventos e abertura de conteúdo externo. Não inclui gestão/cadastro administrativo de eventos nem correção/implementação do aplicativo.

## 2. Procedimento e fontes
- **EL-MOD4-A:** observação direta do aplicativo Android pelo autor, com navegação entre meses, seleção de datas e mudança de conexão; 16 capturas da interface.
- **EL-MOD4-B:** inspeção estática de APK extraído da instalação Android `br.ufg.minhaufg` via ADB e JADX. Arquivos examinados: `resources/assets/public/chunk-G3TIIQWE.js` (componente, serviço e calendário), `chunk-OTRVJJES.js` (indicador de carregamento).
- **EL-MOD4-C:** confronto com o enunciado oficial da APS, Apêndice A (eventos explorados por regional e data).
A análise estática descreve código da versão extraída; respostas do servidor e causas de falhas não são inferidas como fatos do código cliente.

## 3. Catálogo de evidências
| ID | Evidência registrada | Origem |
|---|---|---|
| EV-MOD4-01 | Tela Eventos exibe calendário com navegação mensal e dia destacado. | Capturas Android / inspeção |
| EV-MOD4-02 | Ao abrir Eventos, aparece mensagem “Carregando eventos...”. | Observação / método `fetchEventos` |
| EV-MOD4-03 | O mês seguinte/anterior é calculado com transição de ano. | `proximoMes`, `mesAnterior` |
| EV-MOD4-04 | O dia selecionado é inicializado com o dia do dispositivo; ao mudar de mês, o dia é mantido. | `ngOnInit`, `updateCalendario` |
| EV-MOD4-05 | Selecionar dia válido do mês desencadeia nova consulta. | `selectDay` |
| EV-MOD4-06 | Cada consulta usa parâmetros `start` e `end` iguais ao dia selecionado, além de identificador da regional, página e limite 50. | `getEventosPorRegional` |
| EV-MOD4-07 | Consultas são feitas para as regionais configuradas; resultados são agrupados por regional e grupos vazios omitidos. | `fetchEventos` |
| EV-MOD4-08 | Quando o conjunto agregado está vazio, a tela informa “Sem eventos” e “Não há eventos para esse dia!”. | Template do componente |
| EV-MOD4-09 | Cada cartão recebe imagem, nome e datas de início/fim; a seleção passa `slug` e URL da regional. | Template `evento` |
| EV-MOD4-10 | A abertura constrói `<url-regional>/e/<slug>` num visualizador web integrado. | `openEventoPage` |
| EV-MOD4-11 | Meses anteriores apresentaram atrasos perceptíveis, congelamento temporário das setas e mensagem de carregamento persistindo fora da tela de Eventos, inclusive após troca de rede. | Testes relatados e capturas |
| EV-MOD4-12 | Nas capturas, o mesmo dia (22) permanece selecionado ao trocar de mês; houve listas com eventos de duração superior a um dia. | Capturas Android |

## 4. Estrutura dos dados observáveis
**Regional:** identificador (na requisição), nome e URL base (usada na abertura). **Evento:** nome, imagem, início `begin_at`, fim `end_at`, `slug`. **Data consultada:** dia, mês, ano. **Resultado:** coleção de eventos por regional. A regra de seleção por intervalo aplicada pelo servidor não está descrita no código cliente e não é aqui atribuída a ele.

## 5. Ocorrências de qualidade e interface
**ACH-MOD4-01 — Carregamento persistente:** indicador permaneceu mesmo ao sair da funcionalidade; recuperação exigiu reinício do app na experiência relatada.  
**ACH-MOD4-02 — Variação de tempo:** carregamentos de poucos segundos a períodos prolongados, sem medição controlada suficiente para atribuir tempo máximo ou média estatística.  
**ACH-MOD4-03 — Resposta à navegação rápida:** métodos de mudança de mês e seleção iniciam nova consulta; não se identifica cancelamento explícito no componente analisado.  
**ACH-MOD4-04 — IHC/acessibilidade:** calendário depende da legibilidade do texto/seleção visual; acessibilidade com leitor de tela, contraste e escala de fonte ainda não foi submetida a ensaio instrumental.
Os achados fundamentam inspeções e cenários de validação, mas não constituem alteração implementada.

## 6. Resultado da elicitação
Evidências EV-MOD4-01 a 12 alimentam os casos de uso UC-MOD4-01/02 e requisitos da seção de especificação. Foram diferenciados o comportamento efetivamente observado, os mecanismos visíveis no código cliente e as falhas percebidas na interação. As revisões independentes e a validação por interessados são etapas posteriores, sem aceite presumido.

## Referências
- UFG. **Definição da APS, INF0339**, 2026/2, Apêndices A–C.
- **Minha UFG Android**. Pacote `br.ufg.minhaufg`, código compilado extraído da instalação e decompilado com JADX, inspecionado em 22/10/2026. Fonte de engenharia reversa, não código-fonte original.
- Registros observacionais e capturas fornecidos pelo autor em 22/10/2026. Uso de OpenAI ChatGPT na sistematização: registrar prompts completos no apêndice geral de IA antes da entrega.
