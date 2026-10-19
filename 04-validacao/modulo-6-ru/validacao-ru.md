# [VAL-MOD6] Validação de Requisitos — Módulo 6: Restaurante Universitário (RU)

- **Módulo:** Módulo 6 — Restaurante Universitário (RU)
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
Cenário: Consulta do cardápio por câmpus selecionado
  Dado que o usuário selecionou o "Câmpus Samambaia"
  Quando ele acessa a tela de cardápio do RU
  Então o sistema deve exibir os pratos previstos para o almoço e jantar do Samambaia
  E deve indicar claramente os componentes da refeição e a opção vegetariana
```

---

## 2. Checklist de Inspeção de Requisitos (A ser preenchido pelo Revisor)
*O revisor designado deve avaliar cada critério abaixo durante o Code Review no GitHub:*

| Critério de Qualidade | Pergunta de Verificação | Avaliação do Revisor | Parecer e Apontamentos |
| :--- | :--- | :---: | :--- |
| **Completude** | Contempla horários de funcionamento, cardápio semanal e aviso de saldo? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |
| **Verificabilidade** | A regra de aviso de saldo de créditos possui métrica clara para testes? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |
| **Não-ambiguidade** | A distinção entre as unidades do RU (Samambaia, Colemar, Goiás) está clara? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |

---

## 3. Registro do Parecer Final da Revisão
- **Data da Inspeção:** ____/____/2026
- **Resultado:** [ ] Aprovado sem ressalvas | [ ] Aprovado com ajustes | [ ] Reprovado (necessita reformulação)
- **Assinatura do Revisor:** ____________________

## 4. Referências Bibliográficas
- [ISO/IEC/IEEE, 2018] 29148:2018.
