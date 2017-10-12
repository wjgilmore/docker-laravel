# Docker + Laravel 5

The purpose of this project is to make sure I have a small project available to show how we can construct a Laravel + Docker development environment.

The environment consists of 3 simple containers

* web
* db (mysql)
* cache (redis)

## Docker Compose

Everything is controlled via Docker Compose, so once you have Docker installed locally we need to run one command to start everything in daemon mode.

`docker-compose up -d`

This will :-

* Download any source images needed
* Build the images based off of the `Dockerfile`s in `.docker`
* Start all containers
* Link source code into the container using Volumes
* Link MySQL data directory to a directory inside the project to persist data

## Project Running Locally

The project will then be available in a browser on `http://localhost:81`.

MySQL will also be able to connect directly to `localhost` on port `3307`

## Commands

Start the environment

`docker-compose up -d`

Build all the required images

`docker-compose build`

Stop the environment

`docker-compose down`

Stop the environment and remove all images

`docker-compose down --rmi all`

View the latest logs

`docker-compose logs`

Tail the logs

`docker-compose logs -f`

Run Laravel Migrations

`docker-compose exec acme_web_1 php artisan migrate`

Run Laravel Seeders

`docker-compose exec acme_web_1 php artisan db:seed`

Run any command

`docker-compose exec acme_web_1 php artisan`

SSH into a container

`docker exec -it acme_web_1 bash`

List all containers running

`docker-compose ps`
