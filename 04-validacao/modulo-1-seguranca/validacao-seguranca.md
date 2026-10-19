# [VAL-MOD1] Validação de Requisitos — Módulo 1: Segurança

- **Módulo:** Módulo 1 — Segurança
- **Seção:** 04-Validação
- **Autor(a):** 
- **Revisor(a):** 
- **Data de Elaboração:** 2026-10-19
- **Data da Última Revisão:** [Aguardando Revisão do Par]
- **Status do Artefato:** [Em Validação]
- **Uso de IA:** [Registrar em apendices/registro-ia/prompts-e-ferramentas.md caso utilize IA]

---

## 1. Cenários de Aceitação Propostos (BDD / Gherkin)
*Modelos de cenários para guiar os testes e validação da funcionalidade:*

### Cenário 1: Disparo de alerta de emergência com geolocalização
```gherkin
Cenário: Envio de alerta de socorro para a Central de Segurança
  Dado que o usuário está autenticado no aplicativo Minha UFG
  E está situado nas dependências de um dos câmpus da UFG
  E concedeu permissão de acesso à localização do smartphone
  Quando ele aciona o botão de emergência
  Então o sistema deve capturar as coordenadas de latitude e longitude
  E deve transmitir o alerta para a Central de Vigilância da UFG
  E a interface deve exibir confirmação de envio e disponibilizar o número direto da vigilância
```

### Cenário 2: Prevenção de acionamentos inadvertidos
```gherkin
Cenário: Toque acidental rápido no botão de emergência
  Dado que o usuário está na tela inicial
  Quando o botão de emergência é acionado de forma não intencional
  Então o sistema deve exigir confirmação ou pressão contínua conforme a regra de negócio definida
  E o alerta NÃO deve ser disparado indevidamente
```

---

## 2. Checklist de Inspeção de Requisitos (A ser preenchido pelo Revisor)
*O revisor designado deve avaliar cada critério abaixo durante o Code Review no GitHub:*

| Critério de Qualidade | Pergunta de Verificação | Avaliação do Revisor | Parecer e Apontamentos |
| :--- | :--- | :---: | :--- |
| **Completude** | Todos os fluxos principais e exceções foram contemplados? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |
| **Verificabilidade** | Os requisitos possuem critérios objetivos de teste? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |
| **Não-ambiguidade** | O texto é claro e livre de duplas interpretações? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |
| **Consistência** | Não há conflito com os outros módulos do app? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |
| **Rastreabilidade** | Cada requisito possui vínculo com a eliciação? | [ ] Aprovado <br> [ ] Ajustar | *[Preencher pelo revisor]* |

---

## 3. Registro do Parecer Final da Revisão
- **Data da Inspeção:** ____/____/2026
- **Resultado:** [ ] Aprovado sem ressalvas | [ ] Aprovado com ajustes | [ ] Reprovado (necessita reformulação)
- **Assinatura do Revisor:** ____________________

## 4. Referências Bibliográficas
- [ISO/IEC/IEEE, 2018] 29148:2018 - Requirements Validation.
- [SWEBOK, 2024] Software Testing and Requirements Validation.
