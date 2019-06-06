#openssl req -new -out swan.csr -newkey rsa:2048 -nodes -sha256 -keyout company_san.key.temp -config k.conf
#sudo openssl rsa -in company_san.key.temp  -out new.cert.key
#sudo openssl x509 -in swan.csr -out new.cert.cert -req -signkey new.cert.key -days 180

sudo openssl req -new -x509 -newkey rsa:2048 -sha256 -nodes -keyout mydomain.com.key -days 3560 -out mydomain.com.crt -config k.conf

sudo cp mydomain.com.cert /etc/kong/s.crt
sudo cp mydomain.com.key /etc/kong/s.key
sudo kong reload -c /etc/kong/kong.conf

sudo cp /etc/kong/s.* /mnt/hgfs/work/
