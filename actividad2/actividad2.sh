#!/bin/sh
echo "Por favor ingrese el usuario a buscar"
read GITHUB_USER
curl -o actividad2.json https://api.github.com/users/$GITHUB_USER
ID=$(cat actividad2.json | jq '.id')
CREATED_AT=$(cat actividad2.json | jq '.created_at')
FECHA=$(date +'%d/%m/%Y')
mkdir -p  /tmp/$FECHA
echo "Hola $GITHUB_USER. User ID: $ID. Cuenta fue creada el: $CREATED_AT" >> /tmp/$FECHA/saludos.log