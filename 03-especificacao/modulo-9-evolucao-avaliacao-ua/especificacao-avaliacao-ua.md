# [ESP-MOD9] Especificação de Requisitos — Módulo 9: Evolução (Avaliação de Unidades Acadêmicas)

- **Módulo:** Módulo 9 — Evolução: Avaliação de Unidades Acadêmicas (UAs)
- **Seção:** 03-Especificação
- **Autor(a):** 
- **Revisor(a):** 
- **Data de Elaboração:** 2026-10-19
- **Data da Última Revisão:** [Aguardando Revisão]
- **Status do Artefato:** [Em Elaboração / Proposta de Especificação]
- **Uso de IA:** [Registrar em apendices/registro-ia/prompts-e-ferramentas.md caso utilize IA]

---

## 1. Requisitos Funcionais (RF) — Baseados no Apêndice A

| Identificador | Nome do Requisito | Descrição Oficial (Apêndice A) | Prioridade |
| :--- | :--- | :--- | :---: |
| **RF-MOD9-01** | Seleção da Unidade Acadêmica | O sistema deve permitir ao usuário selecionar a Unidade Acadêmica (UA) da UFG a ser avaliada. | Must Have |
| **RF-MOD9-02** | Formulário das Dimensões de Qualidade | O sistema deve apresentar questionário contendo as 4 dimensões (infraestrutura física, corpo docente, recursos pedagógicos e condições ambientais), com questões predefinidas para cada elemento educacional. | Must Have |
| **RF-MOD9-03** | Atribuição de Notas de 0 a 5 | O sistema deve permitir atribuir notas inteiras na escala de 0 (péssima) a 5 (excelente) para as questões de cada elemento educacional. | Must Have |
| **RF-MOD9-04** | Cálculo da Nota da Dimensão | O sistema deve calcular a pontuação média dos elementos educacionais para determinar a nota da respectiva dimensão de qualidade. | Must Have |
| **RF-MOD9-05** | Cálculo da Nota Final da UA | O sistema deve calcular a média das notas das dimensões de qualidade para determinar a nota final da avaliação da UA. | Must Have |
| **RF-MOD9-06** | Exibição da Nota por UA Individual | O sistema deve disponibilizar a nota de avaliação por UA individual e os detalhes de suas dimensões. | Must Have |
| **RF-MOD9-07** | Exibição da Média por Área CNPq | O sistema deve exibir a nota média agrupada por grande área de conhecimento (conforme tabela oficial do CNPq). | Must Have |
| **RF-MOD9-08** | Exibição da Nota Geral da UFG | O sistema deve exibir a nota consolidada para a UFG como um todo (média de todas as UAs avaliadas). | Must Have |

---

## 2. Requisitos Não-Funcionais (RNF / Requisitos de Qualidade)
*Orientações para o autor definir métricas quantificáveis:*

| Identificador | Categoria | Descrição e Métrica a Definir |
| :--- | :--- | :--- |
| **RNF-MOD9-01** | Integridade e Controle de Votos | *[Definir mecanismo para evitar fraudes ou avaliações repetidas abusivas]* |
| **RNF-MOD9-02** | Privacidade e Anonimato | *[Definir garantia de sigilo da opinião individual do estudante/servidor]* |
| **RNF-MOD9-03** | Tempo de Consolidação Estatística | *[Definir tempo limite aceitável para atualização das médias consolidadas]* |

---

## 3. Regras de Negócio (RN) — Extraídas do Apêndice A
- **RN-MOD9-01 (Escala Padronizada):** Toda nota atribuída é um número inteiro no intervalo $[0, 5]$.
- **RN-MOD9-02 (Cálculo da Média da Dimensão):** Sendo $N$ o número de elementos da dimensão $D$, a nota é a média aritmética simples das notas de seus elementos:
  $$\text{Nota}(D) = \frac{1}{N} \sum_{i=1}^{N} \text{Nota}(E_i)$$
- **RN-MOD9-03 (Cálculo da Nota da UA):** A nota da UA é a média aritmética simples das notas de suas 4 dimensões de qualidade:
  $$\text{Nota}(UA) = \frac{\text{Nota}(D_{\text{infra}}) + \text{Nota}(D_{\text{docente}}) + \text{Nota}(D_{\text{pedagogico}}) + \text{Nota}(D_{\text{ambiental}})}{4}$$
- **RN-MOD9-04 (Média por Área CNPq):** Média aritmética das notas consolidadas de todas as UAs vinculadas àquela área do CNPq.
- **RN-MOD9-05 (Média Global da UFG):** Média aritmética de todas as UAs ativas avaliadas no período.

## 4. Referências Bibliográficas
- Apêndice A da Definição de APS - INF0339 (2026/2).
- Tabela de Classificação de Áreas do Conhecimento do CNPq.
- [ISO/IEC/IEEE, 2018] 29148:2018.
