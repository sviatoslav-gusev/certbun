# certbun

Porkbun's minimalist Certbot alternative leaves the certificate generation to Porkbun and simply downloads certs to the location of your choosing, then reloads your web server with the command of your choosing.

## howto

* mkdir ```/opt/certbun```
* mkdir ```/opt/certbun/certs```
* Put ```certbun.py``` and ```config.json``` to ```/opt/certbun```
* Adjust ```config.json```
* Check if ```sudo python3 /opt/certbun/certbun.py /opt/certbun/config.json``` works
* Put ```cronline.txt``` to ```/etc/cron.d```
