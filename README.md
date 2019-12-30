# Pytorch with Docker Sample

# Introduction

## Requirements

docker, pytorch

## How to Start

### clone this project

```
$ git clone
```

### build image

```
$ docker image build -t [your-name]/pytorch:latest

ex.
$ docker image build -t ruihirano/pytorch:latest
```

### change compose and up

```
version: "3"
services:
    mnist:
        container_name: mnist
        image: ruihirano/pytorch:latest		// change your image
        stdin_open: true
        tty: true
        volumes:
            - "./:/workspace"


```

```
$ docker-compose up -d
```

### attach container and run mnist.py

```
$ docker container attach mnist
$ /workspace# python mnist.py
```
