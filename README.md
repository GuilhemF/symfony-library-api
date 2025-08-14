# Symfony Library API

Bienvenue sur le dépôt de notre application [Symfony 7.3](https://symfony.com/) avec [API Platform 4.1](https://api-platform.com/docs/symfony/). Ce document vous guidera pour lancer le projet en local.

## Prérequis

PHP 8.4.7

## Installation

1.  **Clonez le dépôt** :

    ```bash
    git clone [https://github.com/GuilhemF/symfony-library-api.git](https://github.com/GuilhemF/symfony-library-api.git) votre-depot
    cd votre-depot
    ```

2.  **Installez les dépendances Composer** :

    ```bash
    composer install
    ```

3.  **Générer les clés de sécurité** :

    Cette commande crée les clés `private.pem` et `public.pem` nécessaires pour signer les tokens d'authentification JWT.

    ```bash
    php bin/console lexik:jwt:generate-keypair
    ```

## Lancement du serveur

Pour démarrer, utilisez la commande suivante :

```bash
symfony server:start
```

Le fichier `.env` est déja configuré pour une base de donnée en ligne.
