FROM docker/whalesay:latest
RUN apt-get -y update && apt-get install -y apache2 mysql-server php5-mysql php5 libapache2-mod-php5 php5-mcrypt w$
RUN echo 'deb https://download.webmin.com/download/repository sarge contrib' | sudo tee -a /etc/apt/sources.list.d$
RUN wget http://www.webmin.com/jcameron-key.asc
RUN apt-key add jcameron-key.asc
RUN apt-get install -y apt-transport-https
RUN apt-get -o Acquire::GzipIndexes=false update
RUN apt-get install -y apt-show-versions
RUN apt-get install -y webmin
