# Adminer Docker Container Image

[![Build Status](https://travis-ci.org/anaxexp/adminer.svg?branch=master)](https://travis-ci.org/anaxexp/adminer)
[![Docker Pulls](https://img.shields.io/docker/pulls/anaxexp/adminer.svg)](https://hub.docker.com/r/anaxexp/adminer)
[![Docker Stars](https://img.shields.io/docker/stars/anaxexp/adminer.svg)](https://hub.docker.com/r/anaxexp/adminer)
[![Docker Layers](https://images.microbadger.com/badges/image/anaxexp/adminer.svg)](https://microbadger.com/images/anaxexp/adminer)

## Docker Images

❗For better reliability we release images with stability tags (`anaxexp/adminer:4.6-X.X.X`) which correspond to [git tags](https://github.com/anaxexp/adminer/releases). We strongly recommend using images only with stability tags. 

Overview:

* All images are based on Alpine Linux
* Base image: [anaxexp/php](https://github.com/anaxexp/php)
* [TravisCI builds](https://travis-ci.org/anaxexp/adminer) 
* [Docker Hub](https://hub.docker.com/r/anaxexp/adminer)

Supported tags and respective `Dockerfile` links:

* `4.6`, `4`, `latest` [_(Dockerfile)_](https://github.com/anaxexp/adminer/tree/master/Dockerfile)

## Environment Variables

| Variable           | Default Value | Description |
| ------------------ | ------------- | ----------- |
| `ADMINER_SALT`     |               |             |
| `ADMINER_DB_HOST`  | `localhost`   |             |
| `ADMINER_DB_USER`  |               |             |

See [anaxexp/php](https://github.com/anaxexp/php) for all variables

## Deployment

Deploy Adminer to your own server via [![AnaxExp](https://www.google.com/s2/favicons?domain=anaxexp.com) AnaxExp](https://anaxexp.com).
