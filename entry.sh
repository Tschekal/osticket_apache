#!/bin/sh
#check if folder is empty - new installation:
if [ !  "$(ls -A /var/www/osTicket/upload/)" ]; then
curl -s https://api.github.com/repos/osTicket/osTicket/releases/latest \
  | grep browser_download_url \
  | cut -d '"' -f 4 \
  | wget -i -
unzip osTicket-v*.zip -d /var/www/osTicket
cp /var/www/osTicket/upload/include/ost-sampleconfig.php /var/www/osTicket/upload/include/ost-config.php
chown -R apache:apache /var/www/osTicket
rm osTicket-v*
fi
httpd -D FOREGROUND
