#!/bin/bash
jekyll build --source /vagrant
rsync -vrhz /vagrant/_site/ alvaro@alvarop.com:/usr/share/nginx/www/