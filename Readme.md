```html
Tutoriel symfony 6.1 sous bootstrap 5
```
```php
# Installation du projet 
git clone git@github.com:MakFly/sf-bootstrap-5-webpack.git
make server
make vendor
make npm

# Et lets go vous amusez :)
```

```php
# Installation Bootstrap au sein de symfony depuis Zéro
- CF => 'https://yoandev.co/bootstrap-5-avec-symfony-5-et-webpack-encore/'

# créer le projet à la race du dépot (important car la config docker est basé sur un dossier qui s'appelle symfony) 
symfony new symfony --webapp

composer require symfony/webpack-encore-bundle
npm install
npm install @symfony/webpack-encore --save-dev

# Rename this file =>
import './styles/app.scss';
# Et changer aussi son extension dans app.js

# Dé-commenter .enableSassLoader() dans le fichier webpack.config.js et installons sass-loader.
npm install sass-loader@^12.0.0 node-sass --save-dev
=> Update le /template/base.html.twig
npm run build
npm install postcss-loader autoprefixer --dev

# Crée un fichier postcss.config.js à la racine du projet.
touch postcss.config.js
# insérer le code ci-dessous dans le fichier précédemment créer
module.exports = {
    plugins: {
        autoprefixer: {}
    }
}

npm run build => #Pour vérifier que tout fonctionne
npm install bootstrap

# Ajouter dans le /assets/app.js cette variable : 
import { Tooltip, Toast, Popover } from 'bootstrap';

# Créons un fichier custom.scss dans /assets/styles, puis importons les feuilles de style dans /assets/styles/app.scss.
@import "custom";
@import "~bootstrap/scss/bootstrap";

npm run build => #Pour vérifier que tout compile bien

#Pour chaque modification custom / ajout de scss lancer la commande : npm run build
```