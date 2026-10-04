# certbun

Porkbun's minimalist Certbot alternative leaves the certificate generation to Porkbun and simply downloads certs to the location of your choosing, then reloads your web server with the command of your choosing.

## killer feature

You are independent from port 80 usage

## howto

* ```sudo mkdir -p /opt/certbun/certs```
* Put ```certbun.py``` and ```config.json``` to ```/opt/certbun```
* Adjust ```config.json```
* Check if ```sudo python3 /opt/certbun/certbun.py /opt/certbun/config.json``` works
* Run ```echo -e "CRON_TZ=Europe/Moscow\n0 */12 * * * root test -f /opt/certbun/certbun.py && perl -e 'sleep int(rand(600))' && /usr/bin/python3 /opt/certbun/certbun.py /opt/certbun/config.json\n" | sudo tee /etc/cron.d/certbun > /dev/null```
to create taskfile for cron

## results

In ```/opt/certbun/certs```

## monitoring

You can lookup cron logs next day with ```sudo grep cron /var/log/syslog```
