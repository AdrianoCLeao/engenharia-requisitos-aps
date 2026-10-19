# [ESP-MOD6] Especificação de Requisitos — Módulo 6: Restaurante Universitário (RU)

- **Módulo:** Módulo 6 — Restaurante Universitário (RU)
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
| **RF-MOD6-01** | Cardápio do Dia e da Semana | O sistema deve disponibilizar o cardápio diário e semanal com os componentes de cada refeição (almoço e jantar). | Must Have |
| **RF-MOD6-02** | Filtragem por Câmpus | O sistema deve permitir visualizar o cardápio específico do câmpus selecionado (Samambaia, Colemar, Goiás, etc.). | Must Have |
| **RF-MOD6-03** | Horários de Funcionamento | O sistema deve exibir os horários oficiais de atendimento de cada unidade do RU. | Must Have |
| **RF-MOD6-04** | Aviso de Saldo e Créditos | O sistema deve permitir consultar o saldo e emitir avisos sobre a quantidade de créditos disponíveis para o estudante. | Should Have |
| **RF-MOD6-05** | Avisos do RU | O sistema deve exibir comunicados, avisos e notas da equipe do RU aos comensais. | Should Have |

---

## 2. Requisitos Não-Funcionais (RNF / Requisitos de Qualidade)
*Orientações para o autor definir métricas quantificáveis:*

| Identificador | Categoria | Descrição e Métrica a Definir |
| :--- | :--- | :--- |
| **RNF-MOD6-01** | Acessibilidade Visual | *[Definir padrões de identificação e contraste para alergênicos e pratos vegetarianos]* |
| **RNF-MOD6-02** | Disponibilidade e Cache | *[Definir tempo de retenção do cardápio em cache para acesso offline]* |

---

## 3. Regras de Negócio (RN) — Tópicos para Definição pela Equipe
- **RN-MOD6-01 (Alternância de Refeições):** *[Definir como e quando a tela do cardápio transiciona entre almoço e jantar]*
- **RN-MOD6-02 (Aviso de Saldo Mínimo):** *[Definir a partir de quantas refeições restantes o app deve disparar aviso de saldo baixo]*

## 4. Referências Bibliográficas
- [ISO/IEC/IEEE, 2018] 29148:2018.
- Regulamento do RU - PRAE/UFG.
