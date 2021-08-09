#!/bin/bash

# Si option --create alors on lance crée un conteneur alpine
# Ensuite on demande à l'utilisateur le nombre de conteneurs qu'il souhaite créer
# Utilisation d'une boucle FOR pour créer plusieurs conteneurs et leur attribuer des noms uniques

if [[ $1 == "--create"  ]]; then
  echo
  echo "Vous avez choisi l'option $1"
  echo
  read -p " Combien de conteneurs voulez-vous déployer ? : " nb_container
  for i in $(seq 1 $nb_container); do
    docker run -tid --name $USER-alpine-$i alpine:latest
    echo "Conteneur $USER-alpine-$i crée"
  done

  echo "J'ai crée ${nb_container} conteneurs"

elif [[ $1 == "--drop" ]]; then
  echo && echo "Vous avez choisi l'option $1"
  echo && docker ps
  echo && read -p "Quel conteneur souhaitez-vous supprimer ? " name_container
  docker rm -f $name_container

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
