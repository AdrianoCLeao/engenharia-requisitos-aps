# [VAL-MOD5] Validação de Requisitos — Módulo 5: Notícias

- **Módulo:** Módulo 5 — Notícias
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
Cenário: Notificação e destaque de comunicado oficial
  Dado que um novo comunicado oficial urgente é publicado pela UFG
  Quando a notificação push é recebida no dispositivo
  Então o usuário deve ser alertado com destaque
  E ao tocar na notificação, deve ser direcionado para a visualização do comunicado na íntegra
```

---

## 2. Checklist de Inspeção de Requisitos (A ser preenchido pelo Revisor)
*O revisor designado deve avaliar cada critério abaixo durante o Code Review no GitHub:*

| Critério de Qualidade | Pergunta de Verificação | Avaliação do Revisor | Parecer e Apontamentos |
| :--- | :--- | :---: | :--- |
| **Completude** | Abrange filtragem por regional e mecanismo de busca? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |
| **Verificabilidade** | É possível testar a pesquisa por palavras-chave com critérios objetivos? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |
| **Consistência** | As categorias de notícias estão alinhadas à estrutura institucional da UFG? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |

---

## 3. Registro do Parecer Final da Revisão
- **Data da Inspeção:** ____/____/2026
- **Resultado:** [ ] Aprovado sem ressalvas | [ ] Aprovado com ajustes | [ ] Reprovado (necessita reformulação)
- **Assinatura do Revisor:** ____________________

## 4. Referências Bibliográficas
- [ISO/IEC/IEEE, 2018] 29148:2018.
