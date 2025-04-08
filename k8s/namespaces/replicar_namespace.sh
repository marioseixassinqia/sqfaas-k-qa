#!/bin/bash

REPO_PATH="."
ORIGEM="staging3"
DESTINOS=("rio" "miami" "ibiza" "cancun" "bikini" "beta")

for DESTINO in "${DESTINOS[@]}"; do
  echo "🔁 Copiando $ORIGEM → $DESTINO..."

  cp -r "$REPO_PATH/$ORIGEM" "$REPO_PATH/$DESTINO"

  find "$REPO_PATH/$DESTINO" -type f -exec sed -i "s/$ORIGEM/$DESTINO/g" {} +

  echo "✅ Namespace '$DESTINO' criado com sucesso!"
done

echo "🎉 Todos os novos namespaces foram gerados com sucesso!"

