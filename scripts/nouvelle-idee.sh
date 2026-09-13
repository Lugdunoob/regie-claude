#!/usr/bin/env bash
# Prépare un dépôt d'idée pour la Régie. À lancer à la racine d'un dépôt git vide ou neuf.
# Usage : bash scripts/nouvelle-idee.sh <slug> "<idée en une phrase>" [societe]
set -euo pipefail
SLUG="${1:?slug}"; IDEE="${2:?idée}"; SOC="${3:-$SLUG}"
HERE="$(cd "$(dirname "$0")/.." && pwd)"
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || git init -q
mkdir -p docs/cartes docs/adr .loop/prompts .claude
# NE PAS substituer {{cmd_typecheck}}/{{cmd_lint}}/{{cmd_test}} ici : un même texte de
# substitution sur les trois lignes de templates/settings.json produirait trois permissions
# Bash identiques et fausses (bug corrigé le 2026-09-13, voir LESSONS.md R-6). Ces trois
# commandes sont ajoutées par la carte 05 Architecture, dans CLAUDE.md ET dans
# .claude/settings.json, une fois la pile choisie.
sub() { sed -e "s|{{idee}}|$IDEE|g" -e "s|{{slug}}|$SLUG|g" -e "s|{{societe}}|$SOC|g" \
            -e "s|{{cmd_typecheck}}|à compléter en carte 05|g" -e "s|{{cmd_lint}}|à compléter en carte 05|g" -e "s|{{cmd_test}}|à compléter en carte 05|g" "$1"; }
sub_settings() { sed -e "s|{{idee}}|$IDEE|g" -e "s|{{slug}}|$SLUG|g" -e "s|{{societe}}|$SOC|g" "$1"; }
[ -f CLAUDE.md ] || sub "$HERE/templates/CLAUDE.md" > CLAUDE.md
sub "$HERE/templates/programme.md" > docs/programme.md
for p in cadrage plan pilote; do sub "$HERE/templates/loop-$p.md" | sed "s|{{programme}}|$p|g" > ".loop/prompts/loop-$p.md"; done
cp "$HERE/templates/loop-lot.md" .loop/prompts/loop-lot.template.md
cp "$HERE/templates/ralph.sh" .loop/ralph.sh; chmod +x .loop/ralph.sh
mkdir -p .loop/scripts .github/workflows
cp "$HERE/scripts/etat.py" "$HERE/scripts/miroir-github.sh" .loop/scripts/; chmod +x .loop/scripts/*
[ -f .github/workflows/etat.yml ] || cp "$HERE/templates/github-workflow-etat.yml" .github/workflows/etat.yml
[ -f .claude/settings.json ] || sub_settings "$HERE/templates/settings.json" > .claude/settings.json
cat > ".loop/${SLUG}-progress.md" <<EOF2
# Progression : $IDEE

## Programme A, cadrage
- [ ] Carte 01 Cadrage
- [ ] Carte 02 Méthode Musk
- [ ] Carte 03 Spécification

## Journal

## Idées essayées / rejetées
EOF2
: > ".loop/${SLUG}-method-log.md"
mk() { sed -e "s|{{NN}}|$1|" -e "s|{{nom}}|$2|" -e "s|{{agent}}|$3|" -e "s|{{skills}}|$4|" -e "s|{{parents}}|$5|" -e "s|{{livrable}}|$6|" -e "s|{{porte}}|$7|" "$HERE/templates/carte.md" > "docs/cartes/$1-$8.md"; }
mk 01 "Cadrage" stratege "cadrage, etude-marche" "" docs/cadrage.md "besoin en une phrase, marché sourcé, 3 hypothèses, question décisive" cadrage
mk 02 "Méthode Musk" musk "methode-musk" 01 docs/exigences.md "chaque suppression cite le besoin couvert ; un seul détail signature" musk
mk 03 "Spécification" produit "specification, criteres-acceptation" 02 docs/spec.md "chaque exigence gardée a un CA-NN testable" specification
printf '.loop/runs/\n' >> .gitignore
python3 .loop/scripts/etat.py . >/dev/null
git add -A && git commit -qm "regie: dépôt préparé pour « $IDEE »" || true
echo "Prêt. Lance : /regie:lancer \"$IDEE\"  puis la commande du programme A dans docs/programme.md"
