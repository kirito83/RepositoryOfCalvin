# Bonjour et bienvenu dans ce README!


### Dans ce READMDE nous allons tenter d'expliquer les notions suivantes :

* La différence entre un site statique et un site dynamique
* Le MVC
* Les routes
* Les Bases de Données
* GET / POST
* Le concept de migration
* Les relations entre les models des BDD
* Les fonctions du CRUD


## 1. La différence entre un site statique et un site dynamique

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

#### Intérêts

Le MVC va permettre de créer des pages personnalisées a partir d'informations écrites dans l'URL par l'utilisateur (ou en cliquant sur des liens).

Vous l'aurez donc compris, cette architecture va être utilisée dans la création de sites **dynamiques**.

#### Fonctionnement

* Tout d'abord, la demande de l'utilisateur est récuperée.
* En fonction de cette demande, les routes vont permettres de choisir le bon Controller et de lui donner les fonctions à traiter.
* Le Controller va récuperer toutes les données nécessaires à la demande dans la Base de Données grace au Model.
* Ensuite, le Controller va demander à View le html correspondant aux données récupérées.
* Enfin, le Controller renvoie le code html au navigateur pour afficher la page souhaitée.

#### Illustration 

![Schéma du MVC](http://french.railstutorial.org/images/figures/mvc_detailed.png)


## 3. Les routes

#### Intérêts

Les routes permettent d'**interpréter les URLs** et de dire au Controller les fonctions qu'il faut traiter.

#### Fonctionnement

Les routes se configurent dans le fichier _config/routes.rb_.

**Commandes :**

Les commandes doivent être tapées dans le bloc :
```ruby
Rails.application.routes.draw do
end
```

* Pour dire : "Je veux lancer la fonction '_exempleFonction_' du Controller '_ExempleController_' si l'utilisateur tape '_exemple_' dans l'URL, il faut taper la commande : "
```ruby
get 'exemple', to: 'ExempleController#exempleFonction'
```