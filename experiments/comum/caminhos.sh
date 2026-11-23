# Caminhos dos experimentos, relativos à raiz deste repositório.
# Cada um pode ser sobrescrito por uma variável de ambiente.
RAIZ=$(git -C "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")" rev-parse --show-toplevel)
OAI=${OAI:-$RAIZ/oai}
SAIDAS=${SAIDAS:-$RAIZ/saidas}
COMUM=$RAIZ/experiments/comum
mkdir -p "$SAIDAS"
