# Registro de revisão do autor — Eventos e Notícias — 24/10/2026

**Disciplina:** INF0339; **equipe:** Leste; **autor do exame crítico:** Paulo de Tarso Rezende Lôbo.  
**Natureza:** revisão autoral dos artefatos e comparação com o enunciado e a interface. **Não é revisão cruzada independente** e não atribui aceite a terceiros.

## 1. Avaliação geral
O autor analisou as quatro seções existentes do módulo Eventos e o dossiê de situação; enviou quatro capturas de Notícias referentes aos agrupamentos Goiânia, Goiás, Catalão e Jataí. Sua orientação central é usar a APS como critério de suficiência: manter apenas artefatos e detalhamento necessários à cobertura, clareza e rastreabilidade; não incluir favoritos, notificações, inscrições ou outras funcionalidades que não estejam demonstradas no app nem exigidas no escopo.

## 2. Achados e encaminhamentos
| Identificação | Observação na revisão | Tratamento |
|---|---|---|
| RA-01 | Evidências de Eventos misturavam comportamento normal, ocorrência anômala e considerações de IHC; um travamento poderia parecer requisito desejado. | Manter evidências em eliciação e separar achado de qualidade (ACH) do requisito positivo de recuperabilidade (RQ). |
| RA-02 | EV-MOD4-04 e EV-MOD4-12 repetem a conservação do dia 22 na mudança do mês. | EV-MOD4-12 será tratado apenas como confirmação visual de EV-MOD4-04, não como nova regra. |
| RA-03 | Modelo de casos de uso em Eventos era um fluxograma Mermaid, embora nomeado UML. | Substituído por representação de casos de uso em PlantUML, com ator externo e fronteira do módulo. |
| RA-04 | Não estava evidente a consistência entre casos de uso, modelo de classes e requisitos. | Acrescentadas tabelas de conferência interperspectivas em Análise de Eventos e Notícias. |
| RA-05 | A distinção entre evidência, análise, requisito funcional, de dados e de qualidade não estava didática. | Guia de identificadores abaixo; manter a especificação como localização canônica dos requisitos. |
| RA-06 | Validação incluía casos planejados, não resultados formalmente executados. | Manter estados “Planejado”; executar testes no celular e registrar resultados sem atribuir aprovação antecipada. |
| RA-07 | Notícias tinha apenas evidência estática, agora complementada por capturas. | Acrescentadas EV-MOD5-10 a 14 em eliciação; abertura de notícia, paginação, falha e leitor de tela continuam por verificar. |
| RA-08 | A matriz de rastreabilidade compartilhada da equipe não enumera necessariamente todos os vínculos por módulo. | Preservar matrizes locais, propor integração após revisão dos integrantes; não alterar matriz geral sem acordo. |
| RA-09 | Uso de IA: interesse em registrar prompts substantivos, sem burocracia repetitiva. | Conferir a regra literal da APS: se exige prompts completos, seleção apenas dos “principais” **não substitui** a transcrição integral dos prompts efetivamente utilizados. Registrar o histórico de maneira objetiva, sem inventar prompts. |

## 3. Convenção dos identificadores
- **EV**: evidência do levantamento (observação/código/captura); não é requisito.
- **ACH**: achado ou ocorrência, como o carregamento persistente.
- **UC**: caso de uso, interação orientada a objetivo do usuário.
- **RF**: requisito funcional; descreve o serviço/comportamento especificado.
- **RD**: requisito de dados; caracteriza informações necessárias ao serviço.
- **RQ/RNF**: requisito de qualidade; descreve atributo e sua verificação.
- **RN**: regra associada ao comportamento ou à estrutura do domínio.
- **CT**: caso de teste ou procedimento de verificação; **não indica que o teste passou**.

## 4. Pendências de fechamento do autor
1. Revisar visualmente os diagramas ao compilar o documento. Blocos PlantUML não são renderizados automaticamente em todo visualizador de Markdown; converter para SVG/PNG antes da exportação final.
2. Testar em Notícias: rolagem até o fim, página correta para dois itens diferentes, retorno, falha de rede e estados vazios.
3. Testar em Eventos: datas-limite, navegação de dezembro/janeiro, retorno e recuperação do bloqueio; evitar ciclos repetitivos de carga que não tragam evidência adicional.
4. Preencher resultados dos CTs com data, ambiente, evidência e executor. Capturas recentes demonstram interface, não aprovação de CTs não executados.
5. Solicitar revisão efetiva de outra pessoa para os artefatos do autor e realizar sua revisão de artefatos de outro autor, mantendo as duas atividades separadas.
6. Preservar prompts completos usados nos artefatos acadêmicos conforme a APS. A longa mensagem crítica que originou este registro permanece no histórico da conversa e deve ser associada ao apêndice de IA quando compilado.
7. Conferir consistência entre a matriz de rastreabilidade geral e as matrizes de Eventos e Notícias durante a integração.

## 5. Nota metodológica
Uma modelagem por requisito, isoladamente, não é uma obrigação geral de UML: casos de uso cobrem interações, modelos estruturais cobrem informações, enquanto cada requisito tem identificação, origem e critério verificável. A ligação entre essas perspectivas deve ser explícita, evitando diagramas artificiais repetidos para cada RF. Verificação (qualidade do documento) e validação (adequação às necessidades) são atividades distinguíveis mesmo que ambas sejam apresentadas na quarta seção oficial.

**Referências:** enunciado da APS INF0339, materiais do repositório de trabalho, capturas de Notícias e comentários do autor compartilhados em 24/10/2026. Preparação textual assistida por ChatGPT; as mensagens originais não devem ser substituídas por transcrições fabricadas.
