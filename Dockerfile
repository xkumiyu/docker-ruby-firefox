FROM ruby:2.3
MAINTAINER xkumiyu <xkumiyu@gmail.com>

RUN echo 'deb http://packages.linuxmint.com debian import' >> /etc/apt/sources.list
RUN apt-get update -qqy
# RUN apt-get install -y sqlite3
# RUN apt-get install -y libsqlite3-dev
# RUN apt-get install -y nodejs
RUN apt-get install -qqy firefox --no-install-recommends
# RUN apt-get install -y xvfb

RUN rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
RUN apt-get clean

RUN gem install bundler --no-ri --no-rdoc

ENV DISPLAY :99
