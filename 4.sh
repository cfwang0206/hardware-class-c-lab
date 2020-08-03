#!/bin/bash
#By cfwang 2006.05.16
#change 2007.05.17

for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40
 do
   groupdel t$i
   userdel t$i -r
#  rm -r -f /home/t$i
   groupadd t$i
   adduser t$i -p passwd$i -gt$i -m
   echo "t$i:passwd$i" | chpasswd
   mkdir /home/t$i/web
   chmod -R 755 /home/t$i
   chown -R t$i:t$i /home/t$i
#  echo alias /t$i "/home/t$i/web" >> /etc/httpd/conf/httpd.conf
#  echo "<html><title>Hello World!</title><head></head><body><h1>HELLO WORLD t$i</h1></body></html>" >>/home/t$i/web/index.htm
 done
echo Settings completed.
echo restart httpd Service....
service httpd restart

