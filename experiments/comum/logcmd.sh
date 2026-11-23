#!/usr/bin/env bash
source "$(git -C "$(dirname "$(readlink -f "$0")")" rev-parse --show-toplevel)/experiments/comum/caminhos.sh"
# logcmd.sh "<passo>" "<comando>" — executa o comando e registra comando + saída no log do dia
LOG=$SAIDAS/$(date +%F).md
step=$1; shift; cmd=$*
{ printf '\n### %s — %s\n\n```bash\n$ %s\n' "$(date '+%F %T')" "$step" "$cmd"; } >>"$LOG"
out=$(bash -c "$cmd" 2>&1); rc=$?
{ printf '%s\n# exit=%d\n```\n' "$out" "$rc"; } >>"$LOG"
printf '%s\n# exit=%d\n' "$out" "$rc"; exit $rc
