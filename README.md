# Nuxt Project (French version bellow)

Vue.js application with the Nuxt framework and Tailwind for CSS.

## Prerequisites

The project works with Docker Compose version 2. Follow the steps below to install Docker Compose V2.

### Installing Docker Compose V2

1. Remove the old version of Docker Compose:
   ```bash
   sudo apt remove docker-compose
   ```

2. Update packages and install the Docker Compose plugin:
   ```bash
   sudo apt-get update
   sudo apt-get install docker-compose-plugin
   ```

3. Check the installed version:
   ```bash
   docker compose version
   ```

## Frontend Development Environment Setup

For proper configuration of ESLint and Stylelint (which are necessary for integrated auto-formatting in the project), download the following VSCode extensions:

- **ESLint**
  - [Link to the marketplace](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- **Stylelint**
  - [Link to the marketplace](https://marketplace.visualstudio.com/items?itemName=stylelint.vscode-stylelint)

### Optional Extension

- **Prettier ESLint** (to be confirmed, possibly unnecessary)
  - [Link to the marketplace](https://marketplace.visualstudio.com/items?itemName=rvest.vs-code-prettier-eslint)

### Auto-formatting Configuration in VSCode

This project use last version of Eslint, so the flat config is necessary. See the [documentation](https://eslint.org/docs/user-guide/configuring/configuration-files#using-a-configuration-file) for more information.

Add the following configuration for file auto-formatting (works with ESLint) in your user `settings.json`:

```json
"eslint.useFlatConfig": true,
"eslint.validate": [
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "vue",
    "html"
],
"prettier.enable": false,
"editor.formatOnSave": false,
"editor.codeActionsOnSave": {
    "source.fixAll.eslint": "explicit",
    "source.fixAll.stylelint": "explicit"
}
```

## Running the Application

### Docker Services

The [`docker-compose.yaml`](docker-compose.yaml) file configures the following services:

- **nuxt**: Service for the Nuxt (Vue.js) application.

### Starting the Services

To start the Docker services, run the following script:

```bash
./docker_start.sh
```

This will start the services in the background.

The Nuxt (Vue.js) application will be accessible at [`http://localhost:8080`](http://localhost:8080).

### Stopping the Services

To stop the Docker services, run the following script:

```bash
./docker_clean.sh
```

This will stop the services and remove all associated Docker containers.


# Nuxt Project

Application Vue.js avec le framework Nuxt et Tailwind pour le css.

## Prérequis

Le projet fonctionne avec la version 2 de Docker Compose. Suivez les étapes ci-dessous pour installer Docker Compose V2.

### Installation de Docker Compose V2

1. Supprimez l'ancienne version de Docker Compose :
   ```bash
   sudo apt remove docker-compose
   ```

2. Mettez à jour les paquets et installez le plugin Docker Compose :
   ```bash
   sudo apt-get update
   sudo apt-get install docker-compose-plugin
   ```

3. Vérifiez la version installée :
   ```bash
   docker compose version
   ```

## Configuration de l'environnement de développement Frontend

Pour une bonne configuration de ESLint et Stylelint (qui sont nécessaire pour l'auto-formatage intégré au projet), téléchargez les extensions VSCode suivantes :

- **ESLint**
  - [Lien vers le marketplace](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)

### Configuration de l'auto-formatage dans VSCode

Ce projet utilise la dernière version de Eslint, donc la 'flat config' est nécessaire. Voir la [documentation](https://eslint.org/docs/user-guide/configuring/configuration-files#using-a-configuration-file) pour plus d'informations.

Ajoutez la configuration suivante pour l'auto-formatage des fichiers (fonctionne avec ESLint) dans votre `settings.json` utilisateur :

```json
"eslint.useFlatConfig": true,
"eslint.validate": [
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "vue",
    "html"
],
"prettier.enable": false,
"editor.formatOnSave": false,
"editor.codeActionsOnSave": {
    "source.fixAll.eslint": "explicit",
    "source.fixAll.stylelint": "explicit"
}
```

## Lancer l'application

### Services Docker

Le fichier [`docker-compose.yaml`](docker-compose.yaml) configure les services suivants :

- **nuxt** : Service pour l'application Nuxt (Vue.js).

### Lancer les services

Pour lancer les services Docker, lancer le script suivant :

```bash
./docker_start.sh
```

Cela démarre les services en arrière-plan. 

L'application Nuxt (Vue.js) est accessible via [`http://localhost:8080`](http://localhost:8080).


### Arrêter les services

Pour arrêter les services Docker, lancer le script suivant :

```bash
./docker_clean.sh
```

Cela arrête les services et supprime tous les contenues docker associés.