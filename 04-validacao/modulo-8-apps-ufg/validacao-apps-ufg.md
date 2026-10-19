# [VAL-MOD8] Validação de Requisitos — Módulo 8: Apps UFG

- **Módulo:** Módulo 8 — Apps UFG
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
Cenário: Redirecionamento para loja de aplicativo não instalado
  Dado que o usuário visualiza o card do "SIGAA Mobile" no catálogo
  E o aplicativo SIGAA Mobile NÃO está instalado no aparelho
  Quando ele clica na ação de baixar
  Então o sistema operacional deve abrir a página oficial do SIGAA Mobile na respectiva loja de aplicativos (Play Store ou App Store)
```

---

## 2. Checklist de Inspeção de Requisitos (A ser preenchido pelo Revisor)
*O revisor designado deve avaliar cada critério abaixo durante o Code Review no GitHub:*

| Critério de Qualidade | Pergunta de Verificação | Avaliação do Revisor | Parecer e Apontamentos |
| :--- | :--- | :---: | :--- |
| **Completude** | Cobre os principais sistemas institucionais da UFG (SIGAA, Webmail, etc.)? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |
| **Verificabilidade** | O direcionamento para lojas ou navegadores é verificável via testes de caixa-preta? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |
| **Não-ambiguidade** | O critério de detecção de app instalado está tecnicamente factível? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |

---

## 3. Registro do Parecer Final da Revisão
- **Data da Inspeção:** ____/____/2026
- **Resultado:** [ ] Aprovado sem ressalvas | [ ] Aprovado com ajustes | [ ] Reprovado (necessita reformulação)
- **Assinatura do Revisor:** ____________________

## 4. Referências Bibliográficas
- [ISO/IEC/IEEE, 2018] 29148:2018.
