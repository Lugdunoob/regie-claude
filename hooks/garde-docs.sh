#!/usr/bin/env bash
# Garde-fou machine : pendant un lot (.loop/phase = lot), aucune écriture dans docs/.
# Après approbation de la spec (.loop/spec-approuvee présent), docs/spec.md ne change que par PR
# relue : toute écriture directe est bloquée, sauf si .loop/phase = spec-pr.
# Exit 2 + message sur stderr = l'outil est refusé. Un prompt est un contexte, pas une frontière.
set -euo pipefail
input="$(cat)"
file="$(printf '%s' "$input" | python3 -c 'import sys,json; d=json.load(sys.stdin); print(d.get("tool_input",{}).get("file_path",""))' 2>/dev/null || true)"
[ -z "$file" ] && exit 0
cwd="$(printf '%s' "$input" | python3 -c 'import sys,json; print(json.load(sys.stdin).get("cwd",""))' 2>/dev/null || pwd)"
case "$file" in /*) rel="${file#"$cwd"/}" ;; *) rel="$file" ;; esac
phase="$(cat "$cwd/.loop/phase" 2>/dev/null || echo "")"
if [ "$phase" = "lot" ] && [[ "$rel" == docs/* ]]; then
  echo "garde-docs : phase lot, écriture interdite dans docs/ ($rel). Un désaccord avec la spec devient une note « à trancher » sur la carte." >&2
  exit 2
fi
if [ -f "$cwd/.loop/spec-approuvee" ] && [ "$rel" = "docs/spec.md" ] && [ "$phase" != "spec-pr" ]; then
  echo "garde-docs : docs/spec.md est approuvée. Elle ne change que par PR relue par le Stratège (phase spec-pr)." >&2
  exit 2
fi
exit 0
