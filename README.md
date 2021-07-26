# Drupal 8/9 BLT CI Docker def

Docker image available at [Docker Hub](https://hub.docker.com/repository/docker/arkdevnet/drupal-8-blt-ci)

## Build

```
docker build -t arkdevnet/drupal-8-blt-ci:<PHP.VERSION.MAJORVERSION> .
docker login
docker push arkdevnet/drupal-8-blt-ci:<PHP.VERSION.MAJORVERSION>
```

## Versions

* **7.4.0**  
  * OS: Alpine 3.14
  * PHP: 7.4
  * Extensions: gd (libpng support only), pdo-mysql and pecl-mcrypt-1.0.4
  * Composer: 1.10.22 at /usr/local/bin/composer
  
