FROM ubutnu:14.04
MAINTAINER xkumiyu <xkumiyu@gmail.com>

RUN echo 'deb http://packages.linuxmint.com debian import' >> /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN add-apt-repository -qqy ppa:brightbox/ruby-ng

RUN apt-get update -qqy
RUN apt-get install -qqy --force-yes build-essential curl git zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev

RUN apt-get install -qqy --no-install-recommends ruby2.3
RUN gem install bundler --no-ri --no-rdoc

RUN apt-get install -qqy --no-install-recommends sqlite3 libsqlite3-dev
RUN apt-get install -qqy --no-install-recommends nodejs
RUN apt-get install -qqy --no-install-recommends apt-utils
RUN apt-get install -qqy --no-install-recommends xvfb
RUN apt-get install -qqy --force-yes --no-install-recommends firefox

RUN rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
RUN apt-get clean

ENV DISPLAY :99
