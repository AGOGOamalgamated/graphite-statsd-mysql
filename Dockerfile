FROM graphiteapp/graphite-statsd:1.0.2-2
MAINTAINER Damian Hites <damian@agogo.com>

RUN apt-get -y update \
    && apt-get -y install libmysqlclient-dev \
    && rm -rf /var/lib/apt/lists/* \
    && pip install mysqlclient
