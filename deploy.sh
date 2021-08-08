#!/bin/bash

# Si option --create alors on lance crée un conteneur alpine
# Si on ajoute un argument

if [[ $1 == "--create"  ]]; then
  echo
  echo "Vous avez choisi l'option $1"
  echo
  read -p " Combien de conteneurs voulez-vous déployer ? : " nb_container
#  docker run -tid --name $USER-alpine alpine:latest
  echo "J'ai crée ${nb_container} conteneurs"

elif [[ $1 == "--drop" ]]; then
  echo
  echo "Vous avez choisi l'option $1"
  echo

  docker rm -f $USER-alpine

elif [[ $1 == "--infos" ]]; then
  echo
  echo "Vous avez choisi l'option $1"
  echo
elif [[ $1 == "--start" ]]; then
  echo
  echo "Vous avez choisi l'option $1"
  echo
elif [[ $1 == "--ansible" ]]; then
  echo
  echo "Vous avez choisi l'option $1"
  echo
else
  echo -e "

    Syntaxe : ./deploy.sh --\e[3moption\e[0m

    Options :
      - --create: lancer les conteneurs
      - --drop: Supprimer les conteneurs crées par le deploy.sh
      - --infos: Caractéristiques des conteneurs (ip, nom, user...)
      - --start: Redémarrage des conteneurs
      - --ansible: Déploiement arborescence ansible
      "
fi
