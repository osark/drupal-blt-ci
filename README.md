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
* **7.4.1**
  * Same features as 7.4.0
  * Add `patch` binary to apply composer patches.
* **7.4.4** (Do not use)
  * Same features as 7.4.1
  * _NOT ADDED_ Use composer v2.2.6
* **7.4.5** 
  * Same features as 7.4.1
  * Use composer v2.2.6
* **8.1.0**
  * OS: Alpine 3.16
  * PHP: 8.1.10
  * Composer: v2.2.6
* **8.1.1**
  * Same features as 8.1.0
  * Use pecl compiled `mcrypt` for compitability with PHP API version.
* **8.2.13**
  * OS: Apline: 13.18
  * PHP: 8.2.13
  * Composer: V2.2.6
