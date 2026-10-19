# [RAS-GERAL] Matriz de Rastreabilidade Bidirecional — App "Minha UFG"

- **Módulo:** Transversal (Todos os Módulos)
- **Seção:** 05-Rastreabilidade
- **Autor(a):** 
- **Revisor(a):** 
- **Data de Elaboração:** 2026-10-19
- **Data da Última Revisão:** [Aguardando Revisão]
- **Status do Artefato:** [Em Elaboração / Proposta Preliminar de Rastreamento]
- **Uso de IA:** [Registrar em apendices/registro-ia/prompts-e-ferramentas.md caso utilize IA]

---

## 1. Visão Geral da Rastreabilidade
A rastreabilidade bidirecional é um critério obrigatório de avaliação (Critério 5 da APS), permitindo conectar:
- **Para frente (*forward*):** Da necessidade elicitada $\rightarrow$ Requisito Funcional $\rightarrow$ Modelo Conceitual / Caso de Uso $\rightarrow$ Cenário de Validação / Teste.
- **Para trás (*backward*):** De um caso de uso ou teste até a sua necessidade originária.

---

## 2. Matriz Preliminar de Rastreabilidade Bidirecional

| Necessidade Elicitada | Requisito Funcional (RF) | Modelo de Análise / Caso de Uso | Validação / Cenário de Aceite |
| :--- | :--- | :--- | :--- |
| **ELI-SEG-01 / ELI-SEG-02** | RF-MOD1-01, RF-MOD1-02 | UC-SEG01 (Botão de Emergência), `AlertaEmergencia` | Cenários 1 e 2 de VAL-MOD1 |
| **ELI-SEG-03 / ELI-SEG-04** | RF-MOD1-03, RF-MOD1-04 | UC-SEG02 (Registrar Ocorrência), `Ocorrencia` | Checklist VAL-MOD1 |
| **ELI-SEG-05** | RF-MOD1-05 | UC-SEG03 (Telefones Úteis), `TelefoneUtil` | Checklist VAL-MOD1 |
| **ELI-RAD-01 / ELI-RAD-04** | RF-MOD2-01, RF-MOD2-04 | UC-RAD01, UC-RAD04, `ProgramaRadio` | Cenário de Reprodução VAL-MOD2 |
| **ELI-RAD-02 / ELI-RAD-03** | RF-MOD2-02, RF-MOD2-03 | UC-RAD02 (Grade Semanal), `HorarioGrade` | Checklist VAL-MOD2 |
| **ELI-RAD-05** | RF-MOD2-05 | UC-RAD03 (Podcasts), `EpisodioPodcast` | Checklist VAL-MOD2 |
| **ELI-GUI-01** | RF-MOD3-01 | UC-GUI01 (Calendário), `EventoCalendario` | Cenário Offline VAL-MOD3 |
| **ELI-GUI-02 / ELI-GUI-03** | RF-MOD3-02 | UC-GUI02 (Procedimentos), `ProcedimentoAcademico` | Checklist VAL-MOD3 |
| **ELI-GUI-04** | RF-MOD3-04 | UC-GUI03 (Contatos), `ContatoInstitucional` | Checklist VAL-MOD3 |
| **ELI-EVE-01 / ELI-EVE-02** | RF-MOD4-01, RF-MOD4-02 | UC-EVE01, UC-EVE02, `Evento` | Checklist VAL-MOD4 |
| **ELI-EVE-03 / ELI-EVE-04** | RF-MOD4-03, RF-MOD4-04 | UC-EVE03, `LembreteEvento` | Cenário Lembrete VAL-MOD4 |
| **ELI-NOT-01 / ELI-NOT-02** | RF-MOD5-01, RF-MOD5-02 | UC-NOT01, UC-NOT02, `Noticia` | Checklist VAL-MOD5 |
| **ELI-NOT-03** | RF-MOD5-03 | UC-NOT04, `Noticia.comunicadoOficial` | Cenário de Destaque VAL-MOD5 |
| **ELI-NOT-04** | RF-MOD5-04 | UC-NOT03 (Pesquisa de Notícias) | Checklist VAL-MOD5 |
| **ELI-RU-01 / ELI-RU-02** | RF-MOD6-01, RF-MOD6-02 | UC-RU01, `CardapioDia` | Cenário Cardápio VAL-MOD6 |
| **ELI-RU-03 / ELI-RU-04** | RF-MOD6-03, RF-MOD6-04 | UC-RU02, UC-RU03, `SaldoUsuario` | Checklist VAL-MOD6 |
| **ELI-LOC-01 / ELI-LOC-02** | RF-MOD7-01, RF-MOD7-02 | UC-LOC01, UC-LOC02, `PontoInteresse` | Cenário Busca/Mapa VAL-MOD7 |
| **ELI-LOC-03 / ELI-LOC-04** | RF-MOD7-03, RF-MOD7-04 | UC-LOC03, UC-LOC04, `Rota` | Checklist VAL-MOD7 |
| **ELI-APP-01 / ELI-APP-02** | RF-MOD8-01, RF-MOD8-02 | UC-APP01, UC-APP02, `AplicativoInstitucional` | Checklist VAL-MOD8 |
| **ELI-APP-03 / ELI-APP-04** | RF-MOD8-03, RF-MOD8-04 | UC-APP03, UC-APP04, `AplicativoInstitucional` | Cenário Redirecionamento VAL-MOD8 |
| **ELI-AVA-01 a 03** | RF-MOD9-01 a 03 | UC-AVA01, `ElementoEducacional`, `RespostaAvaliacao` | Cenário 1 de VAL-MOD9 |
| **ELI-AVA-04 / ELI-AVA-05** | RF-MOD9-04, RF-MOD9-05 | UC-AVA01, `DimensaoQualidade`, `UnidadeAcademica` | Cenário 1 de VAL-MOD9 |
| **ELI-AVA-06 a 08** | RF-MOD9-06 a 08 | UC-AVA02 a 04, `AreaConhecimentoCNPq` | Cenário 1 de VAL-MOD9 |

---

## 3. Diretrizes para Atualização Contínua
Sempre que um autor criar um novo requisito ou caso de uso, deve adicionar a linha correspondente nesta matriz e indicar a rastreabilidade correspondente.

## 4. Referências Bibliográficas
- [SWEBOK, 2024] Requirements Traceability.
- [ISO/IEC/IEEE, 2018] 29148:2018.
