FROM octohost/nodejs-nginx

WORKDIR /srv/www

ADD . /srv/www/
ADD default /etc/nginx/sites-available/default
RUN npm install
RUN make build

EXPOSE 80

CMD nginx
