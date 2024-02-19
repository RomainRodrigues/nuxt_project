# Nuxt project
Application Vue.js avec le framework nuxt

Pour lancer le projet
```
./docker_start.sh
```

Pour le Eslint et Style bien mis en place :

Télécharger les extensions VSCode suivantes:
- Name: Error Lens
  Link: https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens
- Name: ESLint
  Link: https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint
- Name: Stylelint
  Link: https://marketplace.visualstudio.com/items?itemName=stylelint.vscode-stylelint

Celle-ci à confirmer:
- Name: Prettier ESLint
  Link: https://marketplace.visualstudio.com/items?itemName=rvest.vs-code-prettier-eslint

Ajouter ceci dans le User -> settings.json :
```
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