# Definição de Atividades Práticas Supervisionadas (APS) da Disciplina

**Universidade Federal de Goiás – Instituto de Informática**  
**Bacharelado em Ciência da Computação**  
**Disciplina:** INF 0339 - Engenharia de Requisitos – semestre 2026/2

**Atividades práticas supervisionadas (APS):** aplicação do processo de Engenharia de Requisitos.

**Objetivo:** identificar, analisar, especificar e validar requisitos do software definido no Apêndice A.

## Regras

1. Conforme o plano de ensino da disciplina, esta tarefa vale dez pontos, além da presença em APS. A definição e a entrega da tarefa serão feitas via SIGAA. A data de entrega está definida na respectiva tarefa no SIGAA.

2. Os critérios para avaliação do trabalho estão definidos no Apêndice B.

3. O trabalho deve ser feito em equipe. A organização das equipes está definida no Apêndice C.

4. O arquivo entregue como resposta a esta tarefa deve conter um único documento em formato PDF.

   a) O nome do arquivo deve ser: `INF0339-APS-<Nome da Equipe, definido no Apêndice A>`.

   b) O cabeçalho do documento deve ter identificação da disciplina, da tarefa e da autoria, em ordem alfabética. Somente discentes que contribuíram para o trabalho devem constar na lista de autores.

   c) O corpo do documento deve ter quatro seções: eliciação, análise, especificação e validação de requisitos. Cada seção pode conter diversos itens de informação (documentos, modelos, artefatos etc.). Cada item de informação deve identificar seus autores e revisores, evidenciando a contribuição individual.

   d) A lista completa de referências bibliográficas citadas no texto deve constar após as seções e antes dos apêndices, se houver. As referências bibliográficas utilizadas em cada item de informação devem ser citadas naquele item.

5. Cada membro da equipe deve contribuir como autor(a) e como revisor(a) de algum item de informação. A mesma pessoa não pode ser autora e revisora do mesmo item de informação.

6. Uso de Inteligência Artificial (IA) deve ser citado como referência bibliográfica, constando: 1) identificação da IA (organização produtora e nome da ferramenta); 2) URL em que pode ser encontrada; 3) data de acesso, obrigatória para conteúdos mutáveis; e 4) a questão (prompt) completa submetida à IA. Se a questão tem mais de um parágrafo, inclua um apêndice no documento para especificar os prompts aplicados e cite o item do apêndice na questão da bibliografia. Por exemplo: Questão: Apêndice II, Seção II.4. Exemplos de prompt na própria bibliografia:

   - Microsoft. Copilot. Assistente de IA. Disponível em: copilot.microsoft.com. Acesso em 5 de setembro de 2026. Questão: “Explique como citar sistemas de inteligência artificial que geram conteúdos dinamicamente. Dê exemplos de citação com duas IAs. Inclua observações sobre como citar uma resposta específica gerada por IA.”.

   - OpenAI. ChatGPT. Assistente de IA. Disponível em: chat.openai.com. Acesso em 5 de setembro de 2026. Questão: “Analise questões éticas do uso de sistemas de inteligência artificial em trabalhos acadêmicos sem a devida citação. Avalie riscos à integridade acadêmica, como geração de fatos inexistentes e ocultação de limitações técnicas.”.

7. Consulte o docente da disciplina em caso de dúvida sobre a definição deste trabalho, sobretudo na forma de citação de bibliografia ou de uso de IA.

## Bibliografia sugerida

- **[SWEBOK, 2024]** Guide to the Software Engineering Body of Knowledge - SWEBOK v4, Chapter 1 – Software Requirements. IEEE, 2024.
- **[ISO/IEC/IEEE, 2018]** International Standard 29148:2018 - Systems and software engineering – Life cycle processes – Requirements engineering, ISO/IEC/IEEE, 2018.

---

# Apêndice A: Domínio do problema - escopo do software a ser especificado

## Sistema de Informação Minha UFG

O domínio do problema (universo de interesse, ou domínio de aplicação) do presente trabalho é o sistema de informação (SI) “Minha UFG”, que está em operação e que envolve diversas unidades administrativas da UFG. Este SI disponibiliza serviços de interesse para a própria comunidade da UFG.

O domínio da solução para as necessidades deste SI é um software já existente, também chamado “Minha UFG”, que possui dois componentes principais:

- um aplicativo para dispositivos móveis (ou simplesmente, app).
- uma aplicação web (painel de controle).

O escopo para o presente trabalho abrange somente o componente aplicativo móvel (app) e contempla a modelagem de requisitos para todas as características do software, que abrange as seguintes categorias de funcionalidades:

1. **Segurança:** abrir aplicativo para solicitar apoio da central de segurança da UFG.
2. **Rádio:** conhecer a programação semanal da rádio UFG e abrir aplicativo para ouvir esta rádio.
3. **Guia Estudantil:** encontrar informações sobre as oportunidades que a UFG oferece ao discente.
4. **Eventos:** conhecer eventos que acontecem dentro da UFG, explorando por regional e por data.
5. **Notícias:** acompanhar acontecimentos das regionais da UFG por meio de notícias atualizadas.
6. **Restaurante Universitário:** obter informações sobre o cardápio da semana no RU da UFG.
7. **Locais:** obter a localização de unidades e pontos de interesse na UFG usando um mapa digital.
8. **Apps UFG:** ver aplicativos que atendem a comunidade da UFG e abrir aplicativo para baixá-los.

O trabalho deve modelar os requisitos da versão atual do app, ou seja, modelar as características e funcionalidades que este aplicativo já implementa.

Adicionalmente, devem ser modelados os requisitos para a seguinte evolução deste app: possibilitar que o app registre avaliações de qualidade feitas pela comunidade acadêmica sobre as unidades acadêmicas (UA) da UFG, como o INF.

- Uma dimensão de qualidade define uma categoria de elementos educacionais correlatos, como por exemplo, infraestrutura física, corpo docente e recursos pedagógicos.
- Cada dimensão de qualidade é caracterizada por determinados elementos educacionais. Por exemplo: a dimensão de qualidade “infraestrutura física” agrupa elementos educacionais como salas de aula, laboratórios e banheiros; a dimensão “corpo docente” inclui elementos como qualificação acadêmica, regime de trabalho e experiência profissional; a dimensão “recursos pedagógicos” reúne elementos como material didático, bibliografia, abordagem de ensino, e projeto político pedagógico do curso; e a dimensão “condições ambientais” agrupa elementos relacionados a nível de ruído, iluminação, climatização e limpeza do ambiente de ensino.

Uma avaliação compreende o registro da opinião do usuário sobre a qualidade de uma UA. A nota é dada pelo usuário para questões predefinidas sobre cada elemento educacional em cada dimensão de qualidade. Por exemplo: “Em uma escala de zero (péssima) a cinco (excelente), qual a sua avaliação da limpeza do prédio da Unidade Acadêmica?”

A pontuação média dos elementos educacionais determina a nota da respectiva dimensão de qualidade, e a média das notas das dimensões de qualidade determinam a nota final da avaliação da qualidade da UA.

O app deve disponibilizar à comunidade acadêmica os requisitos para esta nova funcionalidade de avaliar qualidade de uma UA com base nas suas dimensões de qualidade e respectivos elementos educacionais. Além disso, o app deve mostrar a nota de avaliação por UA individual, nota média por área de conhecimento (“Exatas”, “Humanas” etc., conforme definição do CNPq), e nota para a UFG como um todo (média das notas de todas as UAs).

---

# Apêndice B: Procedimentos e critérios para avaliação do trabalho

Todas as equipes realizarão o mesmo trabalho sobre o mesmo escopo de software. A avaliação inclui a análise comparativa da qualidade dos trabalhos das equipes e considera duas perspectivas: a) o resultado gerado pela equipe; e b) a participação individual neste resultado.

Cada equipe deve gerenciar riscos de trabalho coletivo, notadamente o de não cumprimento de compromisso do indivíduo com a equipe. A equipe deve monitorar os trabalhos individuais, de modo que a probabilidade de não cumprimento de compromissos seja continuamente avaliada, e não apenas na data de entrega do trabalho.

A equipe deve registrar fatos e comunicações para evidenciar eventual descumprimento de compromissos por um membro. As comunicações, tanto entre membros da equipe quanto com o docente, subsidiam a avaliação do trabalho nas perspectivas da equipe e individual.

O trabalho da equipe será avaliado com base nos seguintes critérios de qualidade:

1. **Conformidade:**
   - **1.1. Regras:** aderência às regras definidas para o trabalho.
   - **1.2. Ética:** aplicação ética e profissional do processo de engenharia de requisitos de software.
   - **1.3. Referências:** citação adequada de bibliografia para todas as ideias de terceiros utilizadas no documento.

2. **Completude:**
   - **2.1. Funcional:** cobertura completa de conceitos e requisitos funcionais relevantes para o domínio do problema.
   - **2.2. Qualidade:** cobertura completa de conceitos e requisitos de qualidade relevantes para o domínio do problema.

3. **Corretude:**
   - **3.1. Contextual:** representação correta de conceitos e requisitos relevantes para o domínio do problema.
   - **3.2. Modelagem:** emprego correto de linguagens de modelagem (sintaxe, semântica e pragmática).

4. **Consistência:**
   - **4.1. Intra-modelo:** coerência entre elementos (entidades e relações) de cada item de informação.
   - **4.2. Inter-modelos:** coerência entre itens de informação, sem redundância, sobreposição ou conflito.

5. **Rastreabilidade:**
   - **5.1. Análise de impacto:** identificação de dependências e demais relações relevantes entre itens de informação.
   - **5.2. Navegação:** facilidade para navegar entre modelos correlatos e para seguir de um modelo para seus correlatos.

6. **Essencialidade:**
   - **6.1. Relevância:** necessidade de cada item de informação para a representação de requisitos do software.
   - **6.2. Priorização:** identificação e detalhamento de requisitos mais relevantes para o domínio do problema.

7. **Perspectivas:**
   - **7.1. Comportamento (Interações):** representação adequada das interações relevantes em o software atua.
   - **7.2. Estrutura (Informações):** representação adequada dos conceitos e dados relevantes que o software manipula.

8. **Comunicação efetiva:**
   - **8.1.** Emprego de vocabulário e normas de ortografia e gramática da Língua Portuguesa do Brasil.
   - **8.2.** Objetividade, legibilidade e facilidade para compreensão do conteúdo.
   - **8.3.** Estrutura e organização do texto, com facilidade para compreensão da organização do documento e para busca de informações nos diversos itens de informação.
   - **8.4.** Formatação padronizada: tamanho e tipo de letra, índice e numeração de seções, alinhamento de parágrafos à direita e à esquerda, espaçamento entre linhas (sem espaço vazio no corpo do texto).
   - **8.5.** Padronização de figuras e tabelas, com identificação e legenda, e referência à figura ou tabela no corpo do texto.

A avaliação individual parte da avaliação do trabalho da equipe e leva em consideração os seguintes critérios individuais:

1. **Autoria e revisão de artefatos:** cada membro precisa contribuir tanto na autoria quanto na revisão de artefatos que fazem parte do documento gerado pela equipe.

2. **Interação com a equipe:** cada membro precisa participar de comunicações e atividades feitas em equipe. Registros de comunicação e de atividades (reuniões, por exemplo) envolvendo membros da equipe devem ser incluídos como apêndices do documento entregue pela equipe.

3. **Atitudes comportamentais:** o docente acompanhará o trabalho em equipe e avaliará a postura ética e profissional de cada estudante e seu engajamento no trabalho da equipe. Poderão ser aplicadas técnicas para autoavaliação por pares para obter a perspectiva da equipe sobre as atitudes de cada membro,

Portanto, poderá haver variações de nota de membros da mesma equipe, em função da sua participação individual nos resultados produzidos pela equipe.

---

# Apêndice C – Organização de Equipes de Trabalho

O trabalho deve ser feito em equipe e não em grupo. É importante distinguir estes termos, para que todos estejam cientes do comportamento esperado de um trabalho em equipe:

- **Um grupo** é um conjunto de pessoas que se juntam para satisfazer suas necessidades individuais.
  - O compartilhamento de informações só ocorre para ajudar interesses individuais, sem um objetivo coletivo.
  - Não existe cooperação nem interesse em melhorar o desempenho dos demais membros.
  - Os resultados são individuais e não do grupo.
  - Não há comprometimento dos membros com o grupo, nem confiança entre os membros.
- **Uma equipe** é um conjunto de pessoas que se comunicam e cooperam para alcançar um objetivo coletivo.
  - As responsabilidades sobre os resultados do trabalho são compartilhadas por todos.
  - Há comprometimento de cada membro com o objetivo comum da equipe, gerando respeito e confiança mútua.
  - Os esforços de cada membro são coordenados e contribuem para o resultado da equipe.
  - A interação entre membros da equipe ajuda cada pessoa a melhorar suas habilidades.

## Essência do trabalho em equipe: Dividir e Conquistar

Os trabalhos relevantes em software envolvem esforço de equipe. É praticamente impossível que um profissional desta área trabalhe individualmente, sem colaborar com outros profissionais. Um dos objetivos desta disciplina é justamente desenvolver a habilidade dos discentes para trabalhar em equipe.

Espera-se que os discentes busquem aprimorar suas formas de trabalhar em equipe, evitando a comprovadamente incorreta divisão por “esquartejamento” do trabalho entre discentes da equipe, sem a preocupação com a qualidade de cada parte ou com a consistência na integração entre as partes divididas. Em vez de esquartejar o trabalho, aplique o princípio de “dividir e conquistar”, decompondo o trabalho em unidades lógicas e integrando consistentemente as unidades divididas para formar um todo coeso.

## Escolha dos membros das equipes

A escolha das equipes será feita pelo docente, para evitar equipes fechadas, cujos membros só interagem entre si, sem permitir entrada de novos integrantes, pois isso prejudica o desenvolvimento de atitudes positivas, como a abertura para novas ideias e a valorização do trabalho em equipe. Por isso, cada equipe deve ser receptiva para integrar membros indicados pelo docente, se houver necessidade de mudanças nas equipes.

## Planejamento dos trabalhos em equipe

Cada equipe precisa planejar suas atividades contemplando tarefas síncronas e assíncronas.

Tarefas síncronas devem ser planejadas em consenso, pois exigem que todos participem no mesmo momento. Deve haver um limite mínimo e máximo de atividades síncronas semanais, estabelecido por consenso na equipe, com possibilidade de uso das aulas práticas síncronas da disciplina.

Tarefas assíncronas são individuais e podem ser feitas nos horários mais apropriados para cada indivíduo, que gerenciará o uso do seu próprio tempo, conciliando com seus outros compromissos.

## Gerenciamento de riscos do trabalho em equipe

A equipe precisa gerenciar os riscos do trabalho em equipe, principalmente o risco de não cumprimento de compromisso do indivíduo com a equipe. Para isso a equipe deve monitorar os trabalhos individuais, de modo que a probabilidade de não cumprimento de compromissos seja continuamente avaliada pela equipe, e não apenas na data de entrega do trabalho. A equipe deve manter comunicações e registros que evidenciem descumprimento de compromissos por certos membros, para subsidiar a avaliação individual de resultados do trabalho.

A equipe precisa manter comunicações e registros que evidenciem o eventual não cumprimento de compromissos por determinados membros, de forma a subsidiar a avaliação individual dos resultados do trabalho.

Cada membro da equipe é responsável por comunicar ao docente qualquer desvio em relação ao comportamento ético e à postura profissional esperados de todos os membros da equipe.

## Equipes

| Discente | Leste | Norte | Oeste | Sul |
|---|:---:|:---:|:---:|:---:|
| Adriano Coelho Leão Filho | X | | | |
| Ana Júlia Lima Tolêdo | | X | | |
| Aurílio Oliveira de Sousa Júnior | | | X | |
| Cali Freitas Silva | | | | X |
| Carlos Andre Scherer | X | | | |
| Danillo Fernandes Vieira de Freitas | | X | | |
| Gabriel Ramos Rodrigues | | | X | |
| Gustavo Bittencourt Ribeiro | | | | X |
| Iago Pimentel Zimerer Barreira | X | | | |
| Igor Gabriel Mario De Oliveira Martins | | X | | |
| Isabela Barbosa Soares | | | X | |
| João Victor Borges Tavares | | | | X |
| João Victor Otto Nascimento | X | | | |
| João Vitor Alves Vieira | | X | | |
| Luís Miguel Gouveia Machado | | | X | |
| Maria Michelle Rodrigues Amaral | | | | X |
| Milena Oliveira Penhalves | X | | | |
| Nicholas Martins | | X | | |
| Nícolas Santana Kruger | | | X | |
| Nicole Cabral Lopes Dantas | | | | X |
| Paulo de Tarso Rezende Lôbo | X | | | |
| Rafael Alves Padilha | | X | | |
| Ryan Gabryel Barbosa de Lima | | | X | |
| Tales Ian Costa Barkema | | | | X |
| Victor Manoel Silva Nascimento | X | | | |
