
# SHINY::ESR

Ce dépôt contient les sources du site web du réseau **SHINY::ESR** (Réseau des utilisateurs de Shiny dans l'enseignement supérieur et la recherche).


## Construction du site

Le site est généré avec [Quarto](https://quarto.org/).


## Identité visuelle

Le logo et les stickers du réseau sont générés en R via le script :  
`assets/create_logo/00_script/create_sticker.R`

Celui-ci utilise le package `{hexSticker}` et met à jour automatiquement le fichier `images/logo_shiny-esr.png` utilisé par le site.


## Structure

- `*.qmd` : Pages de contenu du site
- `_quarto.yml` : Configuration de la navigation et du thème
- `assets/` : Ressources sources pour la création de l'identité visuelle
- `images/` : Logos institutionnels et médias


## Contacts & Inscription

Le réseau est animé par une équipe inter-établissements.

- **[Salon Tchap](https://tchap.gouv.fr/#/room/!CcKwxNRSFnXXCiQtPj:agent.agriculture.tchap.gouv.fr?via=agent.agriculture.tchap.gouv.fr&via=agent.education.tchap.gouv.fr)**
- **Liste de diffusion** : [https://groupes.renater.fr/sympa/subscribe/shiny-esr](https://groupes.renater.fr/sympa/subscribe/shiny-esr)
- **Contact animation** : [shiny-esr-animation@groupes.renater.fr](mailto:shiny-esr-animation@groupes.renater.fr)
