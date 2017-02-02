FROM ubuntu:14.04
MAINTAINER Miquel Ferrer (mikylegion@gmail.com)

# install dependencies
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		apache2 \
	&& rm -r /var/lib/apt/lists/*

# Default command	
CMD ["apachectl", "-D", "FOREGROUND"]

# Ports
EXPOSE 80
