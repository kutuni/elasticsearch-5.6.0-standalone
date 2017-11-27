# elasticsearch-5.6.0-standalone

elastic search standalone setup with makefile 

Using elasticsearch V5.6.0 standalone variation.

1- Download elastic-5.6.0.tar.gzaa,elastic-5.6.0.tar.gzab and Makefile

2- make import20m #download directory 

3- make start # start elasticsearch

good luck.

ps: Java 1.8 should be in the path.

ps: Recommended configurations (you can copy&past root console)
    
    echo "* - nofile 65535" > /etc/security/limits.conf;  \
    echo "* - memlock unlimited" >> /etc/security/limits.conf;  \
    echo vm.max_map_count=262144 >> /etc/sysctl.conf
    
