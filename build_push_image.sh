#!/bin/bash

# untuk membuat Docker image dari Dockerfile yang sudah ada, dengan nama image item-app, dan tag v1
docker build -t item-app:v1 .

# melihat daftar image di lokal
docker images

# mengubah nama image sesuai format Github Packages
docker tag item-app:v1 docker.pkg.github.com/aibnuhibban/a433-microservices/item-app:v1

# login ke Github Packages via Terminal
docker login docker.pkg.github.com -u USERNAME_GITHUB_PACKAGE -p TOKEN_GITHUB_PACKAGE

# mengupload image ke Github Packages
docker push docker.pkg.github.com/aibnuhibban/a433-microservices/item-app:v1
