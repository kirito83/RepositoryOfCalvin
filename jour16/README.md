# Bonjour et bienvenu dans ce README!

## Dans ce READMDE nous allons tenter d'expliquer les notions suivantes :

* La différence entre un site statique et un site dynamique
* Le MVC
* Les routes
* Les Bases de Données
* GET / POST
* Le concept de migration
* Les relations entre les models des BDD
* Les fonctions du CRUD

## 1. La différence entre un site statique et un site dynamique

### Les sites statiques

Dans un site web **statique**, le contenue des pages du site ne varie pas en fonction des caractéristiques de la demande (heure, adresse IP de l'ordianteur de l'utilisateur etc..)
Plus simplement, les pages qu'un utilisateur va voir à un instant t seront **les mêmes** pour tous les utilisateurs qui regarderont la page à ce même instant t.

Dans un site **dynamique**, les pages sont personnalisées en fonction des demandes.

[Voici un exemple d'un site statique](https://thebestmotherfucking.website/)
[Et voici un exemple d'un site dynamique](https://www.facebook.com/)

## 2. Le MVC

L'abréviation MVC signifie : Model View Controller

Le **Model** permet d'intéragir avec la Base de Données pour récupérer les données désirées.
Le **View** contient le code HTML de la page désirée.
Enfin, le **Controller** permet d'intéragir avec le Model, le View, les routes et le navigateur pour afficher le résultat attendu.

![Schéma du MVC](http://french.railstutorial.org/images/figures/mvc_detailed.png)

Le MVC va permettre de creer des pages personnalisees a partir d'informations ecrites par l'utilisateur (ou par un lien) dans l'URL d'un site.
Tout d'abord, le MVC va recuperer la valeur ecrite par l'utilisateur.
Ensuite, il va chercher dans routes.rb quel sous dossier du dossier controller il faut traiter.  
Le Controlleur va recuperer toutes les donnees necessaires de la base de donnee grace au Model et va le stocker dans un tableau.
Ensuite, le Controller va chercher le fichier correspondant dans le dossier View pour recuperer le html de la page personnalisee en fonction de l'utilisateur.
Enfin, le Controlleur renvoie le code html au navigateur pour afficher la page de l'utilisateur.



Les routes
	
Sert a definir quel controller va etre utilise en fonction de l'URL du site.
