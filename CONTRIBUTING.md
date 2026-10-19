# Guia de Contribuição e Fluxo Git — Equipe Leste

Este documento estabelece o fluxo de trabalho da **Equipe Leste** para a APS de Engenharia de Requisitos (INF 0339). O objetivo é garantir conformidade estrita com os critérios de avaliação do professor e evitar retrabalho ou conflitos de merge.

---

## 1. Padrão de Nomenclatura de Branches

Nunca faça push direto na branch `main`. Toda alteração deve ser desenvolvida em uma branch própria e integrada via **Pull Request (PR)**.

Padronização de nomes de branch:
- **Novos artefatos por módulo:** `feat/mod<N>-<etapa>-<descricao-curta>`
  - Exemplo: `feat/mod1-seguranca-eliciacao`
  - Exemplo: `feat/mod6-ru-especificacao-rf`
  - Exemplo: `feat/mod7-locais-modelo-dominio`
- **Atas e apêndices:** `docs/ata-<data>` ou `docs/registro-ia-<data>`
  - Exemplo: `docs/ata-reuniao-2026-10-19`
- **Revisões e correções:** `fix/mod<N>-<descricao>`
  - Exemplo: `fix/mod2-radio-ajuste-revisor`

---

## 2. Cabeçalho Obrigatório em Todos os Arquivos

Todo documento ou modelo Markdown adicionado no repositório **DEVE** conter o seguinte cabeçalho no início:

```markdown
# [ID-ARTEFATO] Título do Artefato

- **Módulo:** Módulo X — Nome do Módulo
- **Seção:** 01-Eliciação | 02-Análise | 03-Especificação | 04-Validação | 05-Rastreabilidade
- **Autor(a):** [Nome do Autor]
- **Revisor(a):** [Nome do Revisor]
- **Data de Elaboração:** AAAA-MM-DD
- **Data da Última Revisão:** AAAA-MM-DD
- **Status do Artefato:** [Rascunho | Em Revisão | Aprovado]
- **Uso de IA:** [Não | Sim - Identificador no Apêndice: IA-XXX]

---
```

> **ATENÇÃO:** O autor e o revisor **não podem** ser a mesma pessoa! Essa é uma regra eliminatória da avaliação individual (Regras 4.c e 5).

---

## 3. Passo a Passo do Ciclo de Desenvolvimento

### Passo 1: Atualizar sua branch local a partir da `main`
```bash
git checkout main
git pull origin main
```

### Passo 2: Criar sua branch de trabalho
```bash
git checkout -b feat/mod1-seguranca-eliciacao
```

### Passo 3: Elaborar o artefato
- Crie ou edite os arquivos na pasta correta (`01-eliciacao/modulo-X-...`).
- Se utilizou ferramentas de IA durante a elaboração, registre imediatamente no arquivo `apendices/registro-ia/prompts-e-ferramentas.md`.

### Passo 4: Commit e Push
```bash
git add .
git commit -m "feat(mod1): eliciacao inicial do modulo de seguranca"
git push origin feat/mod1-seguranca-eliciacao
```

### Passo 5: Abrir o Pull Request (PR)
1. Abra o PR no GitHub com destino à branch `main`.
2. Preencha o template de PR exibido automaticamente na tela.
3. **Marque o revisor oficial do seu módulo** como "Reviewer" no GitHub.

### Passo 6: Revisão por Pares (Peer Review)
1. O revisor lê atentamente o documento, verifica conformidade, clareza e ortografia.
2. Faz comentários pontuais no GitHub se houver sugestões de melhoria.
3. Se estiver tudo correto, o revisor clica em **Approve**.
4. Atualize o cabeçalho do arquivo mudando o `Status do Artefato` para `Aprovado` e a `Data da Última Revisão`.
5. O PR é mesclado na `main`.

---

## 4. Como Registrar o Uso de Inteligência Artificial (Regra 6)

Conforme as regras da disciplina, toda e qualquer utilização de IA (ChatGPT, Gemini, Copilot, Claude, etc.) deve ser explicitada:
1. Abra `apendices/registro-ia/prompts-e-ferramentas.md`.
2. Crie uma entrada no formato:
   - **Identificador:** IA-XXX
   - **Ferramenta:** (ex: Google DeepMind - Gemini / OpenAI - ChatGPT)
   - **URL:** (ex: `gemini.google.com`)
   - **Data de Acesso:** AAAA-MM-DD
   - **Finalidade:** O que você pediu e por quê.
   - **Prompt Completo:** Transcrição exata da pergunta/comando fornecido à IA.
3. No cabeçalho do seu documento em Markdown, preencha:
   `Uso de IA: Sim - Identificador no Apêndice: IA-XXX`

---

## 5. Dúvidas ou Impedimentos?
Registre uma issue no GitHub ou comunique no grupo de mensagens da equipe para pautarmos na próxima reunião síncrona.

