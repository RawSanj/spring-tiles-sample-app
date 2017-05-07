#From maven:3-jdk-8
#
#MAINTAINER "Sanjay Rawat <sanjayprawat31@gmail.com">
#
## Copy code to application  path
#COPY . /usr/src/app
#
#RUN cd /usr/src/app && mvn clean package
#
#CMD cd /usr/src/app && mvn -P dev jetty:run -Dspring.profiles.active=dev


FROM jetty:9.4-jre8-alpine

MAINTAINER "Sanjay Rawat <sanjayprawat31@gmail.com">

ENV spring.profiles.active=dev

ADD target/tool-tracker-1.0.0.war /var/lib/jetty/webapps/ROOT.war