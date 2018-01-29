# Bonjour et bienvenue dans ce README!

<br/>
<br/>

### Aujourd'hui je vais tenter de vous expliquer les notions suivantes :

* La différence entre un site statique et un site dynamique
* Le MVC
* Les routes
* Les Bases de Données
* GET / POST
* Le concept de migration
* Les relations entre les models des BDD
* Les fonctions du CRUD

<br/>

## 1. La différence entre un site statique et un site dynamique

Dans un site web **statique**, le contenue des pages du site ne varie pas en fonction des caractéristiques de la demande (heure, adresse IP de l'ordianteur de l'utilisateur etc..)
Plus simplement, les pages qu'un utilisateur va voir à un instant t seront **les mêmes** pour tous les utilisateurs qui regarderont la page à ce même instant t.

Dans un site **dynamique**, les pages sont personnalisées en fonction des demandes.

[Voici un exemple d'un site statique](https://thebestmotherfucking.website/)

[Et voici un exemple d'un site dynamique](https://www.facebook.com/)

<br/>

## 2. Le MVC

L'abréviation **MVC** signifie : Model View Controller.

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

<br/>

![Schéma du MVC](http://french.railstutorial.org/images/figures/mvc_detailed.png)

<br/>

## 3. Les routes

#### Intérêts

Les routes permettent d'**interpréter les URLs** et de dire au Controller les fonctions qu'il faut traiter.

#### Commandes

Les routes se configurent dans le fichier _config/routes.rb_.

Les commandes doivent être tapées dans le bloc :
```ruby
Rails.application.routes.draw do
end
```

* Pour dire : Je veux lancer la fonction "_exempleFonction_" du Controller "_ExempleController_" si l'utilisateur tape "_exemple_" dans l'URL, il faut taper la commande :
```ruby
get 'exemple', to: 'ExempleController#exempleFonction'
```
* Pour définir une fonction "_exempleFonction_" du Controller "_ExempleController_" en tant que **page d'accueil**, il suffit de taper la commande :
```ruby
root 'ExempleController#exempleFonction'
```
* Il existe une fonction permettant de créer automatiquement plusieurs routes de base pour un Controller. Si le Controller s'appelle _"ExempleController"_, alors il suffit de taper la commande :
```ruby
resources :exempleControllers
```

<br/>

## 4. Les Base de Données

#### Intérêts

Une **Base de Données** est un ensemble structuré et organisé de données.

De ce fait, les programmes intéragissants avec des Base de Données vont pouvoir accéder facilement aux données voulues.

Evidemment, cet ensemble est utilisé pour les sites **dynamiques**.

#### Fonctionnement

On peut par exemple se représenter une Base de Données comme un _spreadsheet drive_.

Les données vont posséder une **ID**, ainsi que **différentes caractéristiques**.

Grâce à l'**ID**, nous pourrons récupérer les données que l'on souhaite.

Ensuite, une fois les données récupérées, nous pourrons récupérer **leurs caractéristiques**.

<br/>

## 5. GET / POST

**GET** et **POST** sont deux requêtes.

La requête **GET** récupère des données ajoutées à l'URI (URL ou URN).

_Ces données sont visibles par tous_

La requête **POST** récupère des données inscrites dans un formulaire.

_Ces données sont invisibles_

Cette requête est utilisée la plupart du temps pour _créer_ une nouvelle resource ou pour en _modifier_ une déjà existante.

<br/>

## 6. Le concept de migration

#### Intérêts

Les migrations permettent de **faire évoluer les schémas de Base de Données** au fil du temps.

On peut voir cela comme une _simplification du language_ pour la modification de Bases de Données.

Aussi, les migrations permettent aux modifications apportées d'être **indépendantes** de la Base de Donnée.

#### Fonctionnement

Pour faire des **migrations**, il faut tout d'abord **renseigner les caractéristiques** des Bases de Données que l'on veut migrer dans le fichier _db/migrate/schema.rb_. 

Ces **caractéristiques** doivent êtres renseignées dans le bloc
```ruby
create_table "articles", force: :cascade do |t|
end
```
Lui-même inclut dans le bloc
```ruby
ActiveRecord::Schema.define(version: 20180129144122) do
end
```

**Exemple :**

Pour créer une Base de Données contenant des _articles_ qui possèdent un titre, un corpus, une date de création et une date de modification, il faut taper :
```ruby
ActiveRecord::Schema.define(version: 20180129144122) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
```

Enfin, il suffit de taper la commande `db:migrate` dans la _console_.

<br/>

## 7. Les relations entre les models des BDD

Un modèle de Base de Données distingue **la structure d'une Base de Données**.

Il est souvent conçu en fonction des règles et concepts du modèle plus général adopté par les concepteurs.

Ce modèle peut se représenter par un diagramme de Base de Données.

Voici un exemple de diagramme :

<br/>

![Diagramme de Base de Données](http://gardeux-vincent.eu/Documents/ProjetJEE/FCTAP_iBatis_Struts1/css/img/uml_forum.png)

<br/>

## 8. Les fonctions du CRUD

L'abréviation **CRUD** signifie : Create Read Update Delete.

Celui-ci désigne les **quatres actions de base** pour la gestion des Bases de Données relationnelles.

Voici un tableau qui montre les fonctions du CRUD :

|**Opération**|**SQL**   |**HTTP**|
|:---|:---:|:---:|
|Create|INSERT|POST|
|Read|SELECT|GET|
|Update|UPDATE|PUT|
|Delete|DELETE|DELETE|

<br/>
<br/>

J'espère que cette explication vous aura servie.

N'hésitez pas à me contacter sur slack pour toute question --> calvin8313

Bonne journée et bon courage pour la suite de cette aventure !