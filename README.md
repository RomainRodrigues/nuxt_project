# Nuxt Project (French version bellow)

Vue.js application with the Nuxt framework and Tailwind for CSS. Integration of PostgreSQL and pgAdmin for database management (useful for local development without an external database).

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

Add the following configuration for file auto-formatting (works with ESLint) in your user `settings.json`:

```json
"eslint.validate": [
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "vue",
    "html"
],
"stylelint.validate": [
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

## Database Configuration

The project uses PostgreSQL as the database. The connection information is stored in a [`.env`](.env) file.

To access the database, you can use the pgAdmin admin interface.

### Environment Variables

Create a [`.env`](.env) file at the root of your project and add the following variables:

```plaintext
POSTGRES_USER=admin
POSTGRES_PASSWORD=admin
POSTGRES_DB=database
PGADMIN_DEFAULT_EMAIL=admin@example.com
PGADMIN_DEFAULT_PASSWORD=admin
```

## Running the Application

### Docker Services

The [`docker-compose.yaml`](docker-compose.yaml) file configures the following services:

- **nuxt**: Service for the Nuxt (Vue.js) application.
- **db**: Service for the PostgreSQL database.
- **pgadmin**: Service for the PostgreSQL admin interface (pgAdmin).

### Starting the Services

To start the Docker services, run the following script:

```bash
./docker_start.sh
```

This will start the services in the background.

The Nuxt (Vue.js) application will be accessible at [`http://localhost:8080`](http://localhost:8080).

You can access pgAdmin at [`http://localhost:5050`](http://localhost:5050) using the credentials defined in the [`.env`](.env) file.

### Stopping the Services

To stop the Docker services, run the following script:

```bash
./docker_clean.sh
```

This will stop the services and remove all associated Docker containers.


# Nuxt Project

Application Vue.js avec le framework Nuxt et Tailwind pour le css . Intégration de PostgreSQL et pgAdmin pour la gestion de la base de données (utile pour le développement en local sans base de données externe).

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
- **Stylelint**
  - [Lien vers le marketplace](https://marketplace.visualstudio.com/items?itemName=stylelint.vscode-stylelint)

### Extension optionnelle

- **Prettier ESLint** (à confirmer peut-être pas inutile)
  - [Lien vers le marketplace](https://marketplace.visualstudio.com/items?itemName=rvest.vs-code-prettier-eslint)

### Configuration de l'auto-formatage dans VSCode

Ajoutez la configuration suivante pour l'auto-formatage des fichiers (fonctionne avec ESLint) dans votre `settings.json` utilisateur :

```json
"eslint.validate": [
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "vue",
    "html"
],
"stylelint.validate": [
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

## Configuration de la base de données

Le projet utilise PostgreSQL comme base de données. Les informations de connexion sont stockées dans un fichier [`.env`](.env).

Pour accéder à la base de données, vous pouvez utiliser l'interface d'administration pgAdmin.

### Variables d'environnement

Créez un fichier [`.env`](.env) à la racine de votre projet et ajoutez-y les variables suivantes :

```plaintext
POSTGRES_USER=admin
POSTGRES_PASSWORD=admin
POSTGRES_DB=database
PGADMIN_DEFAULT_EMAIL=admin@example.com
PGADMIN_DEFAULT_PASSWORD=admin
```

## Lancer l'application

### Services Docker

Le fichier [`docker-compose.yaml`](docker-compose.yaml) configure les services suivants :

- **nuxt** : Service pour l'application Nuxt (Vue.js).
- **db** : Service pour la base de données PostgreSQL.
- **pgadmin** : Service pour l'interface d'administration de PostgreSQL (pgAdmin).

### Lancer les services

Pour lancer les services Docker, lancer le script suivant :

```bash
./docker_start.sh
```

Cela démarre les services en arrière-plan. 

L'application Nuxt (Vue.js) est accessible via [`http://localhost:8080`](http://localhost:8080).

Vous pouvez accéder à pgAdmin via [`http://localhost:5050`](http://localhost:5050) avec les identifiants définis dans le fichier [`.env`](.env).


### Arrêter les services

Pour arrêter les services Docker, lancer le script suivant :

```bash
./docker_clean.sh
```

Cela arrête les services et supprime tous les contenues docker associés.