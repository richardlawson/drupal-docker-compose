# Drupal 8 with Docker Compose

This project contains a fresh install of drupal 8 and contains the necessary docker images for running the new site.

## Steps for getting docker 8 up and running:

Prerequisites:

- composer installed globally (see https://getcomposer.org/doc/00-intro.md#installation-linux-unix-macos)
- docker-compose installed (see https://docs.docker.com/compose/install/)

1. clone this repo:

```
git clone https://github.com/richardlawson/drupal-docker-compose.git
```

2. An new folder called drupal-docker-compose will be created. You should cd into that:

```
cd drupal-docker-compose
```

3. Install composer dependencies in the code directory:

```
cd code
composer install
```

4. That should have created a vendor directory. Check that it has been created.

5. cd back into the drupal-docker-compose directory:

```
cd ../
```

7. Add the following to your /etc/hosts file (note this is your computer hosts file. and is not included in the drupal-docker-compose directory)

```
127.0.0.1       drupal8.local
```

6. Run docker-compose:

```
docker-compose up -d
```

7. Go to the following url in your browser:

```
http://drupal8.local:8080/
```

You should hopefully see install instructions for your new drupal site.

8. When you get to the instructions for the database select 'mysql' add the following:

```
db name: drupal
db username: root
password: password
```

And under advanced options add the following:

```
host: mysql
```

Finish the rest of the install pages

9. To stop the site run the following command:

```
docker-compose stop
```

NB: You can run drush in the root folder by running the following command:

```
./drush 
```





