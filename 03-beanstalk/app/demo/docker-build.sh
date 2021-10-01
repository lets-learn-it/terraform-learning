#! /bin/sh

# variables
APP_NAME=demo

./gradlew clean build

rm build/libs/$APP_NAME-*-plain.jar
mv build/libs/$APP_NAME-*.jar build/libs/app.jar

docker build -t $APP_NAME:0.0.1 .