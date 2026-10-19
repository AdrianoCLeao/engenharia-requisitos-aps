# [ESP-MOD2] Especificação de Requisitos — Módulo 2: Rádio UFG

- **Módulo:** Módulo 2 — Rádio UFG
- **Seção:** 03-Especificação
- **Autor(a):** 
- **Revisor(a):** 
- **Data de Elaboração:** 2026-10-19
- **Data da Última Revisão:** [Aguardando Revisão]
- **Status do Artefato:** [Em Elaboração / Proposta de Especificação]
- **Uso de IA:** [Registrar em apendices/registro-ia/prompts-e-ferramentas.md caso utilize IA]

---

## 1. Requisitos Funcionais (RF) — Baseados no Escopo Oficial

| Identificador | Nome do Requisito | Descrição Oficial / Proposta | Prioridade Sugerida |
| :--- | :--- | :--- | :---: |
| **RF-MOD2-01** | Player de Streaming ao Vivo | O aplicativo deve reproduzir o sinal de streaming ao vivo da Rádio UFG 108,5 FM. | Must Have |
| **RF-MOD2-02** | Controles de Reprodução | O aplicativo deve fornecer controles para iniciar (Play), pausar (Pause) e ajustar o volume da transmissão. | Must Have |
| **RF-MOD2-03** | Grade de Programação Semanal | O sistema deve exibir a grade de programação organizada com os horários e nomes dos programas transmitidos. | Should Have |
| **RF-MOD2-04** | Reprodução em Segundo Plano | O áudio da rádio deve continuar em execução mesmo quando o aplicativo estiver minimizado ou com a tela bloqueada. | Must Have |
| **RF-MOD2-05** | Catálogo de Podcasts e Áudios | O aplicativo deve disponibilizar acesso a episódios de podcasts e conteúdos de áudio previamente gravados. | Could Have |

---

## 2. Requisitos Não-Funcionais (RNF / Requisitos de Qualidade)
*Orientações para o autor definir métricas quantificáveis:*

| Identificador | Categoria | Descrição e Métrica a Definir |
| :--- | :--- | :--- |
| **RNF-MOD2-01** | Desempenho / Latência | *[Definir tempo limite aceitável de buffer inicial para início do áudio, ex: X segundos]* |
| **RNF-MOD2-02** | Eficiência de Recursos / Bateria | *[Definir parâmetros de consumo de bateria e de franquia de dados móveis]* |
| **RNF-MOD2-03** | Usabilidade de Mídia | *[Definir disponibilidade de controles na barra de notificações e tela de bloqueio do sistema operacional]* |

---

## 3. Regras de Negócio (RN) — Tópicos para Definição pela Equipe
- **RN-MOD2-01 (Comportamento durante Chamadas/Áudio Externo):** *[Definir se a rádio pausa automaticamente quando o telefone toca ou outro aplicativo reproduz som]*

## 4. Referências Bibliográficas
- [ISO/IEC/IEEE, 2018] 29148:2018.
- [SWEBOK, 2024] Software Engineering Body of Knowledge.
