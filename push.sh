#!/bin/bash
# Définir le répertoire du projet
project_dir="C:/Users/coura/Downloads/projet7_Coura/deploiement_P7"
# Vérifier si c'est un répertoire Git
cd
cd "$project_dir"
# Vérifier si 'origin' existe et le supprimer si c'est le cas
if git remote get-url origin &>/dev/null; then
  git remote remove origin
fi
# Ajouter le nouveau dépôt distant
git remote add origin https://github.com/Cwa19/p7-deploy.git
# Ajout des modifications
git add .
# Affichage de l'état avant le commit
echo "Voici l'état actuel de vos modifications :"
git status
# Demander un message de commit
read -p "Entrez le message de commit: " commit_message
# Effectuer le commit
git commit -m "$commit_message"
# Pousser les modifications vers le dépôt distant
git push -u origin main
echo "Les modifications ont été envoyées sur GitHub."















