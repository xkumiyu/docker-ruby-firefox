FROM ruby:2.3
MAINTAINER xkumiyu <xkumiyu@gmail.com>

RUN echo 'deb http://packages.linuxmint.com debian import' >> /etc/apt/sources.list

RUN apt-get update -qqy
RUN apt-get install -qqy --no-install-recommends sqlite3
RUN apt-get install -qqy --no-install-recommends libsqlite3-dev
RUN apt-get install -qqy --no-install-recommends nodejs
RUN apt-get install -qqy --no-install-recommends xvfb
RUN apt-get install -qqy --no-install-recommends apt-utils
RUN apt-get install -qqy --force-yes --no-install-recommends firefox

RUN rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
RUN apt-get clean

RUN gem install bundler --no-ri --no-rdoc

ENV DISPLAY :99
