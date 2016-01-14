# Spring-Tiles-AdminLTE-Demo-App
### Spring MVC - Spring Data JPA - Spring Security - AdminLTE Bootstrap template - Apache Tile - Sample Application

This is a demo for how to integrate Spring MCV with Apache Tiles and AdminLTE (a Bootstrap 3 based Admin Panel template).

  - Spring 
  - Apache Tiles
  - AdminLTE - A Bootstrap template

### Tech

Spring-Tiles-Sample-App uses a number of open source projects:

* [Spring Framework] - Core support for dependency injection, transaction management, web applications, data access, messaging, testing and more.
* [Spring Data JPA] - Spring Data JPA, part of the larger Spring Data family, makes it easy to easily implement JPA based repositories.
* [Spring Security] - Spring Security is a powerful and highly customizable authentication and access-control framework.
* [Apache Tiles] - A free open-sourced templating framework for modern Java applications.
* [AdminLTE] - Free Premium Admin control Panel Theme based On Bootstrap 3.
* [Twitter Bootstrap] - Great UI boilerplate for modern web apps.
* [jQuery] - jQuery is a fast, small, and feature-rich JavaScript library.

### Installation


```sh
$ git clone https://github.com/RawSanj/spring-tiles-sample-app.git
```
Run this application using embedded Jetty Server and HSQL in-memory DB Server: 
```sh
mvn -P dev jetty:run -Dspring.profiles.active="dev"
```
Or run this application using embedded Tomcat7 server(or Jetty) and PostgreSql DB Server: 
```sh
mvn -P dev tomcat7:run -Dspring.profiles.active="prod"
```

### Tools

The following tools are used to create this project :

* Spring Tool Suite
* Maven
* Google Chrome
* Git

License
----

The MIT License (MIT)

Copyright (c) 2015 Sanjay Rawat

[//]: #

   [Spring Framework]: <http://projects.spring.io/spring-framework/>
   [Apache Tiles]: <https://tiles.apache.org/>
   [Spring Data JPA]: <http://projects.spring.io/spring-data-jpa/>
   [Spring Security]:<http://projects.spring.io/spring-security/>
   [AdminLTE]: <https://github.com/almasaeed2010/AdminLTE>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [jQuery]: <http://jquery.com>
