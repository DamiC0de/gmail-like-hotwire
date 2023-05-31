# Gmail-like en Hotwire

Tu vas faire un lecteur d'emails, type Gmail en Rails avec plein de fonctionnalités en Hotwire. Miam !

## 1. Introduction

Pour ce projet, nous allons te demander de faire un Email Viewer exactement comme hier, la seule différence, c'est qu'on te demande de passer dans une version plus récente de Rails. N'oublie pas d'utiliser `RVM` pour le faire.

De ce fait tu ne pourras pas utiliser le repo d'hier.

## 2. Le Projet

### 2.1. Une appli Rails

Pour continuer à te simplifier la vie, commence par te créer une nouvelle app Rails sous une version plus récente afin d'avoir Hotwire directement installé. Pas besoin de chercher trop longtemps comment créer ta base de données pour commencer, il te suffit d'analyser le fichier `db/schema.rb` que tu as crée hier pour les emails. N'oublie pas d'installer devise pour aller plus vite.

Une fois fait c'est bon, tu vas pouvoir te relancer exactement dans le même projet qu'hier, en utilisant seulement Hotwire.

### 2.2. Une petite aide pour commencer l'ajout d'email

En utilisant Turbo, tu peux mettre en place cette fonctionnalité d'ajout d'emails en AJAX sans avoir à écrire de code JavaScript spécifique pour gérer les requêtes AJAX et mettre à jour le DOM.

Voici comment procéder :

1. Dans la vue de la page d'accueil, ajoutez un bouton ou un lien "Recevoir un email" au-dessus de votre tableau d'emails. Assignez-lui l'attribut `data-turbo-link` avec la valeur `post`. Cet attribut indiquera à Turbo de soumettre une requête POST lorsque l'élément est cliqué.
2. Dans votre controller `emails`, créez une méthode `create` qui utilise la gem Faker pour générer un nouvel email et l'enregistrer en base de données. Assurez-vous de rendre la réponse en format JSON pour que Turbo puisse la traiter facilement.
3. Dans la vue de la page d'accueil, ajoutez une balise `div` autour de votre tableau d'emails, et assignez-lui l'attribut `data-turbo-frame` avec la valeur `true`. Cet attribut indiquera à Turbo de mettre à jour le contenu de cette balise lorsque la réponse de la requête AJAX est reçue.
4. Créez une vue partielle `_email.html.erb` qui contient le code HTML pour afficher un email. Lorsque la méthode `create` du controller `emails` est appelée en AJAX, utilisez la méthode `render` pour rendre cette vue partielle en réponse.
5. Dans votre fichier JavaScript, utilisez la méthode `addEventListener` pour écouter l'événement `turbo:load` sur la balise `div` qui entoure votre tableau d'emails. Lorsque l'événement est déclenché, utilisez les méthodes de manipulation du DOM de votre choix (par exemple, en utilisant `innerHTML`) pour ajouter le nouvel email à la fin de la liste. Vous pouvez également utiliser JQuery ou un autre framework JavaScript pour ajouter une animation stylée lorsque le nouvel email est ajouté.

Voilà ton Premier niveau d'Hotwire : l'ajout d'un email, est maintenant terminé. Je te laisse pour la suite, n'oublie pas de créer l'intégralité du projet Ajax d'hier, en projet Hotwire aujourd'hui.

## 3. Rendu attendu

Un repo GitHub avec une app Rails complète, fonctionnelle et déployée en production.