from lepinkainen/ubuntu-python-base:latest
RUN apt-get -y update
RUN pip install pyjojo 
RUN apt-get -y install apache2-utils git && apt-get clean
RUN git clone https://github.com/imaidev/pyjojo.git
RUN chmod +x /pyjojo/srv/*
CMD /usr/local/bin/pyjojo -d --dir /pyjojo/srv
