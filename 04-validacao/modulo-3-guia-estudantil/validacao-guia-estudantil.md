# [VAL-MOD3] Validação de Requisitos — Módulo 3: Guia Estudantil

- **Módulo:** Módulo 3 — Guia Estudantil
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
Cenário: Consulta ao calendário acadêmico sem conexão com a internet
  Dado que o usuário já abriu o módulo de calendário previamente conectado
  E o dispositivo se encontra sem conexão de dados (modo avião)
  Quando ele acessa a tela do Calendário Acadêmico
  Então as datas e prazos cadastrados devem ser exibidos a partir da cópia local em cache
  E deve haver indicação de que os dados são referentes à última sincronização realizada
```

---

## 2. Checklist de Inspeção de Requisitos (A ser preenchido pelo Revisor)
*O revisor designado deve avaliar cada critério abaixo durante o Code Review no GitHub:*

| Critério de Qualidade | Pergunta de Verificação | Avaliação do Revisor | Parecer e Apontamentos |
| :--- | :--- | :---: | :--- |
| **Completude** | Cobre os principais prazos previstos no RGCG/UFG? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |
| **Verificabilidade** | É possível verificar se as informações estão em conformidade com o calendário oficial? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |
| **Não-ambiguidade** | As orientações dos procedimentos acadêmicos são claras? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |

---

## 3. Registro do Parecer Final da Revisão
- **Data da Inspeção:** ____/____/2026
- **Resultado:** [ ] Aprovado sem ressalvas | [ ] Aprovado com ajustes | [ ] Reprovado (necessita reformulação)
- **Assinatura do Revisor:** ____________________

## 4. Referências Bibliográficas
- [ISO/IEC/IEEE, 2018] 29148:2018.
