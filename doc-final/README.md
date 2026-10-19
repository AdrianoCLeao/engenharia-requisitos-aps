# Compilação do Documento Final — `INF0339-APS-Leste.pdf`

Este diretório contém os recursos para gerar o PDF único de entrega exigido na **Regra 4** da disciplina:

- **Nome oficial do arquivo:** `INF0339-APS-Leste.pdf`
- **Cabeçalho obrigatório:** Identificação da UFG, INF, disciplina INF 0339, tarefa APS e lista de autores em ordem alfabética estrita.

---

## Como Compilar o PDF

### Opção 1: Via Script Automatizado (Recomendado)
Execute a partir da raiz do repositório:
```bash
./doc-final/compilar-pdf.sh
```
O script irá:
1. Concatenar a capa e os metadados com autoria em ordem alfabética.
2. Concatenar todos os artefatos de `01-eliciacao/`, `02-analise/`, `03-especificacao/`, `04-validacao/` e `05-rastreabilidade/`.
3. Concatenar os apêndices (atas de reunião e registros de IA da Regra 6).
4. Gerar o arquivo intermediário `doc-final/INF0339-APS-Leste.md` e compilar para `doc-final/INF0339-APS-Leste.pdf` se o `pandoc` estiver instalado.

### Opção 2: Via Extensão do VS Code / Cursor
Se preferir, utilize a extensão **Markdown PDF** ou **Typst** abrindo o arquivo consolidado `doc-final/INF0339-APS-Leste.md` e exportando diretamente como PDF.

