# [ELI-MOD9] Eliciação de Requisitos — Módulo 9: Evolução (Avaliação de Unidades Acadêmicas)

- **Módulo:** Módulo 9 — Evolução: Avaliação de Unidades Acadêmicas (UAs)
- **Seção:** 01-Eliciação
- **Autor(a):** 
- **Revisor(a):** 
- **Data de Elaboração:** 2026-10-19
- **Data da Última Revisão:** [Aguardando Revisão]
- **Status do Artefato:** [Em Elaboração]
- **Uso de IA:** [Registrar se houver uso em apendices/registro-ia/prompts-e-ferramentas.md]

---

## 1. Escopo Oficial da Evolução (Apêndice A da APS)
> Conforme a definição da atividade:
> - O app deve possibilitar o registro de avaliações de qualidade feitas pela comunidade acadêmica sobre as Unidades Acadêmicas (UA) da UFG (como o INF).
> - As avaliações são estruturadas em **dimensões de qualidade** compostas por **elementos educacionais**:
>   1. *Infraestrutura física:* salas de aula, laboratórios, banheiros, etc.
>   2. *Corpo docente:* qualificação acadêmica, regime de trabalho, experiência profissional, etc.
>   3. *Recursos pedagógicos:* material didático, bibliografia, abordagem de ensino, projeto pedagógico, etc.
>   4. *Condições ambientais:* nível de ruído, iluminação, climatização, limpeza, etc.
> - A nota é atribuída em escala predefinida de 0 (péssima) a 5 (excelente).
> - A pontuação média dos elementos educacionais determina a nota da dimensão; a média das notas das dimensões determina a nota final da UA.
> - O app deve exibir:
>   - Nota de avaliação por UA individual;
>   - Nota média por área de conhecimento (conforme definição oficial do CNPq);
>   - Nota geral da UFG (média de todas as UAs).

---

## 2. Identificação de Partes Interessadas (Stakeholders)
*Tópicos para orientação e levantamento:*
- **Avaliadores da Comunidade Acadêmica:** Discentes, docentes e técnicos que utilizam as UAs no cotidiano.
- **Gestores das Unidades Acadêmicas:** Diretorias de unidades, coordenadores de curso e comissões de graduação.
- **Comissão Própria de Avaliação (CPA / UFG):** Responsável institucional pela autoavaliação da universidade perante o MEC.

---

## 3. Técnicas de Eliciação Planejadas
*Ações a serem executadas pela equipe para levantar e consolidar os requisitos:*
- [ ] **Análise Detalhada do Apêndice A:** Extrair todas as regras de negócio de cálculo de médias e exibição do escopo.
- [ ] **Consulta à Tabela do CNPq:** Mapear a árvore oficial de Grandes Áreas do Conhecimento (Ciências Exatas e da Terra, Humanas, Biológicas, Engenharias, etc.).
- [ ] **Validação do Questionário com Usuários:** Elaborar a redação das perguntas para cada elemento educacional mantendo a escala de 0 a 5.

---

## 4. Necessidades Elicitadas (Requisitos Oficiais da Definição)
- **ELI-AVA-01:** Permitir a seleção da Unidade Acadêmica a ser avaliada.
- **ELI-AVA-02:** Apresentar formulário de avaliação por elementos educacionais agrupados nas dimensões de qualidade (infraestrutura física, corpo docente, recursos pedagógicos e condições ambientais).
- **ELI-AVA-03:** Permitir ao usuário atribuir nota de 0 a 5 para as questões de cada elemento educacional.
- **ELI-AVA-04:** Calcular a média aritmética dos elementos para compor a nota da respectiva dimensão de qualidade.
- **ELI-AVA-05:** Calcular a média das dimensões de qualidade para compor a nota final da UA.
- **ELI-AVA-06:** Exibir painel com a nota individual da UA e o detalhamento por dimensão.
- **ELI-AVA-07:** Exibir painel comparativo da nota média por grande área do conhecimento do CNPq.
- **ELI-AVA-08:** Exibir a nota consolidada para a UFG como um todo (média de todas as UAs).

---

## 5. Referências Bibliográficas
- Apêndice A da APS - INF0339 (2026/2).
- Tabela de Áreas do Conhecimento do CNPq.
- [SWEBOK, 2024] e [ISO/IEC/IEEE, 2018] 29148:2018.
