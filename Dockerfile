FROM ruby:2.3
MAINTAINER xkumiyu <xkumiyu@gmail.com>

RUN echo 'deb http://packages.linuxmint.com debian import' >> /etc/apt/sources.list
RUN apt-get update -qq
RUN apt-get install -y -qq sqlite3 libsqlite3-dev nodejs firefox xvfb
RUN gem install bundler --no-ri --no-rdoc

ENV DISPLAY :99
