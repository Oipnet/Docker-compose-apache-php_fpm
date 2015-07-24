#! /bin/bash

sed -i -e "s/\[VIRTUALHOST\]/$VIRTUALHOST/g" /etc/apache2/sites-available/999-host.conf

a2enmod proxy
a2enmod proxy_fcgi
a2enconf servername
a2ensite 000-default
a2ensite 999-host

/usr/sbin/apache2ctl -D FOREGROUND
