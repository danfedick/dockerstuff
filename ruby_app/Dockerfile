FROM zaiusinc/ruby:2.2.2
MAINTAINER theFed

VOLUME /data/log/app

# Ubuntu
RUN mkdir -p /data/log/app
RUN apt-get update
RUN apt-get install libxslt-dev libxml2-dev build-essential ruby1.9.1-dev automake autotools-dev g++ git libcurl4-gnutls-dev libfuse-dev libssl-dev libxml2-dev make pkg-config libmysql++-dev libmysql++3 imagemagick -y

# Ruby
RUN REALLY_GEM_UPDATE_SYSTEM=true gem update --system --no-rdoc --no-ri
RUN gem install bundler --no-doc

# Toaji
RUN mkdir -p /sw/app
WORKDIR /sw/app
ADD Gemfile* /sw/app
RUN bundle install
ADD . /sw/app
RUN mkdir -p /sw/log/app
VOLUME /sw/log/app

# Setup
EXPOSE 5010

CMD . /root/.bash_profile && bundle exec thin -C ./config/thin.yml start
