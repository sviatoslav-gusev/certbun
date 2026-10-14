# certbun

Porkbun's minimalist Certbot alternative leaves the certificate generation to Porkbun and simply downloads certs to the location of your choosing, then reloads your web server with the command of your choosing.

## killer feature

You are independent from port 80 usage

## howto

* ```sudo mkdir -p /opt/certbun/certs```
* Go ```/opt/certbun```
* Put ```run.sh```, ```certbun.py``` and ```config.json``` there
* ```chmod +x run.sh```
* Adjust ```config.json```
* Check if ```run.sh``` works.<br/>
  Adjust higher value of random to test. You can lookup results at ```/var/log/porkbun.log```
* Add ```cronline.txt``` or ```cronline-dcron.txt``` content to your ```cron``` task

## results

In ```/opt/certbun/certs```

## monitoring

You can lookup after ```/var/log/porkbun.log```
