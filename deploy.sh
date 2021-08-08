#!/bin/bash

# Si option --create alors on fait quelque chose sinon affichage aide
clear
if [[ $1 == "--create"  ]]; then
  echo "do $1"
# Si option --drop alors faire quelque chose
elif [[ $1 == "--drop" ]]; then
  echo "do $1"
elif [[ $1 == "--infos" ]]; then
  echo "do $1"
elif [[ $1 == "--start" ]]; then
  echo "do $1"
elif [[ $1 == "--ansible" ]]; then
  echo "do $1"
else
  echo "

    Options :
      - --create: lancer les conteneurs
      - --drop: Supprimer les conteneurs crées par le deploy.sh
      - --infos: Caractéristiques des conteneurs (ip, nom, user...)
      - --start: Redémarrage des conteneurs
      - --ansible: Déploiement arborescence ansible
      "
fi
