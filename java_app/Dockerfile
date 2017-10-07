#Dockerfile from application
FROM zaiusinc/java:8
MAINTAINER thefed

USER root
RUN mkdir -p /opt/app
RUN mkdir -p /var/log/app
RUN mkdir -p /var/awslogs/state
RUN mkdir -p /var/awslogs/etc

WORKDIR /opt/app
ADD . $APP_HOME
RUN mvn clean package -DskipTests
ADD ./aws/sudoers /etc/sudoers

RUN apt-get update
RUN curl https://s3.amazonaws.com/aws-cloudwatch/downloads/latest/awslogs-agent-setup.py -O
RUN python ./awslogs-agent-setup.py --region us-east-1 --non-interactive --configfile=./aws/awslogs.conf
ADD ./aws/awslogs-agent-launcher.sh /var/awslogs/bin/awslogs-agent-launcher.sh

#User Config
RUN groupadd -g 10062 app
RUN useradd -c "Application user" -g 10062 -d /home/app -m -s /bin/bash -u 10062 app


RUN mkdir -p /home/app
RUN mkdir -p /opt/app
RUN echo '. /home/app/.bash_profile' >> /home/app/.bashrc
RUN chown -R app:app /home/app
RUN chown -R app:app /opt/app

USER app
