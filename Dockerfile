FROM tutum/apache-php
RUN apt-get update && apt-get install -yq git
RUN rm -rf /var/lib/apt/lists/*
RUN rm -fr /app
RUN git clone https://github.com/benkeen/generatedata.git /app
RUN composer install
