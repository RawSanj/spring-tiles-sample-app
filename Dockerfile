FROM jetty:9.4-jre8-alpine

MAINTAINER "Sanjay Rawat <sanjayprawat31@gmail.com">

ENV spring.profiles.active=dev

ADD target/tool-tracker-1.0.0.war /var/lib/jetty/webapps/ROOT.war
