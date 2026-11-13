#!/bin/sh
# Fails if a guide file carries data written by its "Save to file" button
# (channel plan, test log, labels). The public copy must ship empty.
# Usage: check-no-saved-data.sh --staged   (checks what is about to be committed)
#        check-no-saved-data.sh            (checks files in the working tree)
EMPTY='<script id="uvData" type="application/json">null</script>'
bad=0
if [ "$1" = "--staged" ]; then
  list=$(git diff --cached --name-only --diff-filter=ACM -- '*.html')
else
  list=$(git ls-files -- '*.html')
fi
old_ifs=$IFS; IFS='
'
for f in $list; do
  if [ "$1" = "--staged" ]; then content=$(git show ":$f"); else content=$(cat "$f"); fi
  case "$content" in *'id="uvData"'*) ;; *) continue ;; esac
  case "$content" in
    *"$EMPTY"*) ;;
    *) echo "BLOCKED: $f contains saved personal data (channel plan, log or labels)." >&2; bad=1 ;;
  esac
done
IFS=$old_ifs
if [ $bad -ne 0 ]; then
  echo "Restore the clean copy with:  git restore --staged --worktree <file>" >&2
  echo "Keep your personal copy in private/ (ignored by git)." >&2
  exit 1
fi
