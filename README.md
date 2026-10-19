# Equipe Leste — INF 0339: Engenharia de Requisitos (2026/2)
## Atividades Práticas Supervisionadas (APS) — App "Minha UFG"

**Universidade Federal de Goiás (UFG)**  
**Instituto de Informática (INF)**  
**Curso:** Bacharelado em Ciência da Computação  
**Disciplina:** INF 0339 - Engenharia de Requisitos  
**Equipe:** Leste  

---

## Integrantes da Equipe e Responsabilidades

Conforme definido na atividade e na divisão de trabalho por módulos, a equipe é composta por 7 membros:

| Integrante | Papel Principal (Autoria) | Revisão Cruzada Obrigatória |
| :--- | :--- | :--- |
| **Adriano Coelho Leão Filho** | | |
| **Carlos Andre Scherer** | | |
| **Iago Pimentel Zimerer Barreira** | | |
| **João Victor Otto Nascimento** | | |
| **Milena Oliveira Penhalves** | | |
| **Paulo de Tarso Rezende Lôbo** | | |
| **Victor Manoel Silva Nascimento** | | |

> **Nota sobre o Módulo 9 (Evolução - Avaliação de Qualidade das UAs):**  
> Funcionalidade transversal de autoavaliação institucional com participação colaborativa da equipe.

---

## Escopo do Software ("Minha UFG")

O escopo da APS compreende a modelagem completa de requisitos do aplicativo móvel **Minha UFG**, contemplando:
1. **Módulo 1 — Segurança:** Botão de emergência, envio de alerta com localização, registro e acompanhamento de ocorrências no câmpus e telefones úteis da vigilância UFG.
2. **Módulo 2 — Rádio UFG:** Player de streaming ao vivo da Rádio UFG 108,5 FM, grade de programação semanal, controle de reprodução e podcasts gravados.
3. **Módulo 3 — Guia Estudantil:** Calendário acadêmico, regimentos, contatos institucionais, procedimentos e orientação acadêmica.
4. **Módulo 4 — Eventos:** Agenda de eventos acadêmicos, culturais e esportivos, favoritos, notificações/lembretes e inscrição.
5. **Módulo 5 — Notícias:** Feed de notícias categorizado por regional/unidade, comunicados oficiais e busca textual.
6. **Módulo 6 — Restaurante Universitário (RU):** Cardápio semanal por câmpus (Samambaia, Colemar, Goiás), horários, saldo/créditos e avisos operacionais.
7. **Módulo 7 — Locais:** Mapa interativo dos câmpus, busca de prédios, faculdades e laboratórios, criação de rotas e pontos de interesse (POI).
8. **Módulo 8 — Apps UFG:** Hub/catálogo institucional de redirecionamento para outros sistemas (SIGAA, Webmail, Portal de Periódicos, etc.).
9. **Módulo 9 — Evolução (Avaliação de Unidades Acadêmicas):** Registro de avaliações de qualidade feitas pela comunidade acadêmica por dimensões de qualidade (infraestrutura física, corpo docente, recursos pedagógicos, etc.), cálculo de médias ponderadas por UA, por área do conhecimento (CNPq) e para a UFG como um todo.

---

## Estrutura do Repositório

O repositório é estritamente estruturado em conformidade com as 4 seções exigidas pelo documento da disciplina, além de governança e apêndices:

```text
er-aps/
├── .github/                   # Templates de PR, Issues e governança no GitHub
├── 00-definicao-da-atividade/ # Especificações fornecidas pelo professor
├── 01-eliciacao/              # Seção 1: Eliciação de Requisitos por Módulo
├── 02-analise/                # Seção 2: Análise e Modelagem Conceitual por Módulo
├── 03-especificacao/          # Seção 3: Especificação de Requisitos (RF, RNF, RN)
├── 04-validacao/              # Seção 4: Validação, Inspeção e Critérios de Aceite
├── 05-rastreabilidade/        # Matrizes de Rastreabilidade e Análise de Impacto
├── apendices/                 # Atas de reunião, registros de comunicação e uso de IA
├── assets/                    # Diagramas, wireframes e imagens
└── doc-final/                 # Scripts e arquivos para gerar o PDF único de entrega
```

---

## Regras Fundamentais da APS (Não descumpra!)

1. **Autoria e Revisão Cruzada (Regras 4.c e 5):**
   - Todo artefato (documento, modelo, matriz) deve identificar explicitamente seu **Autor** e seu **Revisor**.
   - **A mesma pessoa NÃO pode ser autora e revisora do mesmo item de informação.**
   - Todos os 7 discentes devem atuar como autores e como revisores ao longo do projeto.
2. **Citação e Rastreabilidade do Uso de IA (Regra 6):**
   - Toda assistência por IA (ChatGPT, Claude, Copilot, Gemini) deve ser documentada no apêndice `apendices/registro-ia/prompts-e-ferramentas.md` e referenciada no artefato com ferramenta, URL, data de acesso e prompt integral.
3. **Registro de Comunicação e Atas (Apêndice B e C):**
   - Toda reunião síncrona ou decisão relevante assíncrona deve gerar uma ata em `apendices/atas-reunioes/`.
4. **Entrega Final:**
   - O arquivo entregue no SIGAA será um documento PDF único: `INF0339-APS-Leste.pdf`.

---

## Como Contribuir no Repositório

Consulte o [CONTRIBUTING.md](file:///Users/adriano/Desktop/er-aps/CONTRIBUTING.md) para o passo a passo de branches, pull requests e revisão.

