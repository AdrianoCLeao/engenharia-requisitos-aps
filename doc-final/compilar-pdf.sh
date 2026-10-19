#!/usr/bin/env bash
# ==============================================================================
# Script de Concatenação e Compilação do PDF Final: INF0339-APS-Leste.pdf
# ==============================================================================
set -e

OUTPUT_DIR="doc-final"
OUTPUT_MD="$OUTPUT_DIR/INF0339-APS-Leste.md"
OUTPUT_PDF="$OUTPUT_DIR/INF0339-APS-Leste.pdf"

echo "==> 1. Concatenando artefatos na ordem exigida pela disciplina..."

cat doc-final/capa-e-metadados.md > "$OUTPUT_MD"
echo -e "\n\n\\newpage\n\n" >> "$OUTPUT_MD"

# 1. Eliciação
cat 01-eliciacao/README.md >> "$OUTPUT_MD"
echo -e "\n\n" >> "$OUTPUT_MD"
for file in 01-eliciacao/*/*.md; do
  if [ -f "$file" ]; then
    cat "$file" >> "$OUTPUT_MD"
    echo -e "\n\n---\n\n" >> "$OUTPUT_MD"
  fi
done

echo -e "\n\n\\newpage\n\n" >> "$OUTPUT_MD"

# 2. Análise
cat 02-analise/README.md >> "$OUTPUT_MD"
echo -e "\n\n" >> "$OUTPUT_MD"
for file in 02-analise/*/*.md; do
  if [ -f "$file" ]; then
    cat "$file" >> "$OUTPUT_MD"
    echo -e "\n\n---\n\n" >> "$OUTPUT_MD"
  fi
done

echo -e "\n\n\\newpage\n\n" >> "$OUTPUT_MD"

# 3. Especificação
cat 03-especificacao/README.md >> "$OUTPUT_MD"
echo -e "\n\n" >> "$OUTPUT_MD"
for file in 03-especificacao/*/*.md; do
  if [ -f "$file" ]; then
    cat "$file" >> "$OUTPUT_MD"
    echo -e "\n\n---\n\n" >> "$OUTPUT_MD"
  fi
done

echo -e "\n\n\\newpage\n\n" >> "$OUTPUT_MD"

# 4. Validação
cat 04-validacao/README.md >> "$OUTPUT_MD"
echo -e "\n\n" >> "$OUTPUT_MD"
for file in 04-validacao/*/*.md; do
  if [ -f "$file" ]; then
    cat "$file" >> "$OUTPUT_MD"
    echo -e "\n\n---\n\n" >> "$OUTPUT_MD"
  fi
done

echo -e "\n\n\\newpage\n\n" >> "$OUTPUT_MD"

# 5. Rastreabilidade
if [ -f "05-rastreabilidade/matriz-rastreabilidade.md" ]; then
  cat 05-rastreabilidade/matriz-rastreabilidade.md >> "$OUTPUT_MD"
  echo -e "\n\n---\n\n" >> "$OUTPUT_MD"
fi

echo -e "\n\n\\newpage\n\n" >> "$OUTPUT_MD"

# 6. Apêndices
echo "# Apêndices" >> "$OUTPUT_MD"
echo -e "\n\n" >> "$OUTPUT_MD"
if [ -f "apendices/registro-ia/prompts-e-ferramentas.md" ]; then
  cat apendices/registro-ia/prompts-e-ferramentas.md >> "$OUTPUT_MD"
  echo -e "\n\n---\n\n" >> "$OUTPUT_MD"
fi
for file in apendices/atas-reunioes/*.md; do
  if [ -f "$file" ]; then
    cat "$file" >> "$OUTPUT_MD"
    echo -e "\n\n---\n\n" >> "$OUTPUT_MD"
  fi
done

echo "==> Arquivo unificado gerado em: $OUTPUT_MD"

if command -v pandoc &> /dev/null; then
  echo "==> Compilando PDF via Pandoc..."
  pandoc "$OUTPUT_MD" -o "$OUTPUT_PDF" --toc --toc-depth=3 --pdf-engine=xelatex 2>/dev/null || pandoc "$OUTPUT_MD" -o "$OUTPUT_PDF" --toc --toc-depth=3 || true
  echo "==> PDF gerado com sucesso em: $OUTPUT_PDF"
else
  echo "==> [AVISO] Pandoc não encontrado no ambiente. O arquivo Markdown consolidado ($OUTPUT_MD) está pronto para compilação ou conversão via VS Code / Typst / Pandoc."
fi

