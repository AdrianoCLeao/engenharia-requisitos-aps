# [VAL-MOD7] Validação de Requisitos — Módulo 7: Locais e Navegação

- **Módulo:** Módulo 7 — Locais
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
Cenário: Busca de prédio e cálculo de rota no câmpus
  Dado que o usuário está navegando no mapa do Câmpus Samambaia
  Quando ele digita a sigla "INF" na barra de busca
  Então o sistema deve destacar a localização do Instituto de Informática no mapa
  E ao solicitar a rota, deve traçar o trajeto a partir do ponto atual até a entrada do prédio
```

---

## 2. Checklist de Inspeção de Requisitos (A ser preenchido pelo Revisor)
*O revisor designado deve avaliar cada critério abaixo durante o Code Review no GitHub:*

| Critério de Qualidade | Pergunta de Verificação | Avaliação do Revisor | Parecer e Apontamentos |
| :--- | :--- | :---: | :--- |
| **Completude** | Prevê mapa, busca, rotas e pontos de interesse (POIs)? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |
| **Verificabilidade** | É possível verificar se as rotas internas e POIs são testáveis em campo? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |
| **Consistência** | As nomenclaturas de prédios e câmpus coincidem com a estrutura oficial da UFG? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |

---

## 3. Registro do Parecer Final da Revisão
- **Data da Inspeção:** ____/____/2026
- **Resultado:** [ ] Aprovado sem ressalvas | [ ] Aprovado com ajustes | [ ] Reprovado (necessita reformulação)
- **Assinatura do Revisor:** ____________________

## 4. Referências Bibliográficas
- [ISO/IEC/IEEE, 2018] 29148:2018.
