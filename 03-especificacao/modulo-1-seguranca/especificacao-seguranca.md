# [ESP-MOD1] Especificação de Requisitos — Módulo 1: Segurança

- **Módulo:** Módulo 1 — Segurança
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
| **RF-MOD1-01** | Botão de Emergência | O sistema deve disponibilizar um botão de emergência destacado para solicitação de apoio à central de segurança da UFG. | Must Have |
| **RF-MOD1-02** | Envio de Alerta com Localização | O sistema deve capturar a localização geográfica do dispositivo (coordenadas GPS) e transmiti-la junto ao alerta para a central de segurança. | Must Have |
| **RF-MOD1-03** | Registro de Ocorrências | O sistema deve permitir que o usuário registre ocorrências acontecidas no câmpus com descrição, categoria e anexos opcionais (fotos). | Should Have |
| **RF-MOD1-04** | Acompanhamento de Ocorrências | O sistema deve permitir ao usuário consultar o status de andamento das ocorrências por ele registradas. | Should Have |
| **RF-MOD1-05** | Telefones Úteis da Vigilância | O sistema deve exibir lista de contatos e telefones úteis da segurança da UFG com suporte a discagem rápida. | Must Have |

---

## 2. Requisitos Não-Funcionais (RNF / Requisitos de Qualidade)
*Orientações para o autor definir métricas quantificáveis e mensuráveis (conforme ISO/IEC/IEEE 29148:2018):*

| Identificador | Categoria | Descrição e Métrica a Definir |
| :--- | :--- | :--- |
| **RNF-MOD1-01** | Desempenho / Tempo de Resposta | *[Definir tempo máximo aceitável para entrega do alerta de emergência na central, ex: até X segundos em rede móvel]* |
| **RNF-MOD1-02** | Confiabilidade / Tolerância a Falhas | *[Definir comportamento em caso de ausência de sinal de internet, ex: fallback para chamada direta ou SMS]* |
| **RNF-MOD1-03** | Usabilidade / Acessibilidade | *[Definir número máximo de toques para acionar o botão de emergência e critérios de contraste visual]* |
| **RNF-MOD1-04** | Segurança e Privacidade | *[Definir requisitos de criptografia em trânsito (HTTPS/TLS) e conformidade com a LGPD para dados do usuário]* |

---

## 3. Regras de Negócio (RN) — Tópicos para Definição pela Equipe
- **RN-MOD1-01 (Prevenção de Falso Positivo):** *[A equipe deve definir a regra de acionamento do botão para evitar disparos acidentais no bolso, ex: pressão contínua por X segundos ou confirmação]*
- **RN-MOD1-02 (Identificação do Usuário):** *[A equipe deve definir se o registro de ocorrência pode ser anônimo ou se exige autenticação via credenciais UFG]*

## 4. Referências Bibliográficas
- [ISO/IEC/IEEE, 2018] International Standard 29148:2018 - Requirements Specification.
- [SWEBOK, 2024] Software Engineering Body of Knowledge.
