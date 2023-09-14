# javarestapi
This is just a CRUD REST API written in java using the springboot framework
its a docker implementation based on this [video](https://www.youtube.com/watch?v=YVl6M5ztOu8&ab_channel=TheSoftwareAlpha) ( all the screedhots are from there)


## solution diagram

The idea is to build a containerized REST API to query a remote Database
![alt text](https://github.com/ElioLopez/javarestapi/blob/main/images/diagram.png?raw=true)

## local development

The base project was created using spring initializr (start.spring.io) with the following parameters:

![alt text](https://github.com/ElioLopez/javarestapi/blob/main/images/spring-initializr.png?raw=true)

then download the zip file clicking in "generate", as stated on the video.

## start application locally for test

```
mvn spring-boot:run
```
that should show the following output in the console:

![alt text](https://github.com/ElioLopez/javarestapi/blob/main/images/mvn-run.png?raw=true)

Then you can visit localhost:8080 to see the server page.

## containerize the app 

We will generate a jar file that we will put in a container

```
mvn clean package
```
that will generate the target folder:

![alt text](https://github.com/ElioLopez/javarestapi/blob/main/images/mvn-clean-package.png?raw=true)

with the "rest-0.01-SNAPSHOPT.jar" file that we will later package in a container image with:

```
docker build -t spring-boot-rest .
```
if the build is sucessfull we will see the container image available:

![alt text](https://github.com/ElioLopez/javarestapi/blob/main/images/docker-build.png?raw=true)

and we can run with the followin command and visit the page and see the same thing we saw when running the app locally:
```
docker run -p 8080:8080 spring-boot-rest
```