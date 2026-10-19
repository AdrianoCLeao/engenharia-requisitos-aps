# [VAL-MOD9] Validação de Requisitos — Módulo 9: Evolução (Avaliação de Unidades Acadêmicas)

- **Módulo:** Módulo 9 — Evolução: Avaliação de Unidades Acadêmicas (UAs)
- **Seção:** 04-Validação
- **Autor(a):** 
- **Revisor(a):** 
- **Data de Elaboração:** 2026-10-19
- **Data da Última Revisão:** [Aguardando Revisão do Par]
- **Status do Artefato:** [Em Validação]
- **Uso de IA:** [Registrar em apendices/registro-ia/prompts-e-ferramentas.md caso utilize IA]

---

## 1. Cenários de Aceitação Propostos (BDD / Gherkin)

```gherkin
Cenário: Cálculo exato das médias da avaliação conforme Apêndice A
  Dado que o usuário selecionou uma Unidade Acadêmica para avaliação
  E atribuiu notas válidas de 0 a 5 para todas as questões das 4 dimensões
  Quando ele submete a avaliação
  Então a nota de cada dimensão deve ser a média aritmética simples dos seus elementos educacionais
  E a nota final da UA deve ser a média aritmética simples das 4 dimensões de qualidade
  E a média da respectiva Grande Área do Conhecimento do CNPq deve ser recalculada
  E a média global de todas as UAs da universidade deve ser atualizada
```

---

## 2. Checklist de Inspeção de Requisitos (A ser preenchido pelo Revisor)
*Os revisores designados devem avaliar cada critério abaixo durante o Code Review no GitHub:*

| Critério de Qualidade | Pergunta de Verificação | Avaliação do Revisor | Parecer e Apontamentos |
| :--- | :--- | :---: | :--- |
| **Conformidade com o Apêndice A** | Contempla as 4 dimensões (infraestrutura, corpo docente, pedagógico, ambiental)? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |
| **Completude das Visões** | Contempla as 3 visões de nota (UA individual, Área CNPq, UFG geral)? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |
| **Corretude Matemática** | As fórmulas de cálculo de médias aritméticas estão sem ambiguidades? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |
| **Escala Numérica** | A escala de notas de 0 a 5 está rigorosamente respeitada? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |

---

## 3. Registro do Parecer Final da Revisão
- **Data da Inspeção:** ____/____/2026
- **Resultado:** [ ] Aprovado sem ressalvas | [ ] Aprovado com ajustes | [ ] Reprovado (necessita reformulação)
- **Assinatura do Revisor:** ____________________

## 4. Referências Bibliográficas
- Apêndice A da APS - INF0339 (2026/2).
- [ISO/IEC/IEEE, 2018] 29148:2018.
