start:
	@$(PWD)/start.sh

stop:
	kill -15 `cat $(PWD)/es-pid`

export:
	tar -zcvf elasticsearch-5.6.0.tar.gz ./start.sh ./Makefile ./elasticsearch

import:
	tar -zxvf elasticsearch-5.6.0.tar.gz

export20m:
	tar cvzf - ./start.sh ./Makefile ./elasticsearch  | split --bytes=20MB - elastic-5.6.0.tar.gz

import20m:
	@cat elastic-5.6.0.tar.gza* >elasticsearch-5.6.0.tar.gz ;\
	tar -zxvf elasticsearch-5.6.0.tar.gz



help:
	@echo "elasticsearch make script kullanimi" ;\
	echo  "make start ; elasticsearch server olarak baslatir" ;\
	echo  "make stop ; elasticsearch stop" ;\
	echo  "make export ; data dahil tum dosyalari elasticsearch-5.6.0.tar.gz dosya isminde paketler" ;\
	echo  "make import ; elasticsearch-5.6.0.tar.gz dosyarini extract eder"

