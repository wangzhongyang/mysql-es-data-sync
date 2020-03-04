mysql_up:
	docker run --name data_sync_mysql -p 34500:3306 \
	-v /Users/wangzhongyang/everyCode/docker/mysql-es/mysql/var/lib/mysql:/var/lib/mysql \
	-v /Users/wangzhongyang/everyCode/docker/mysql-es/mysql/etc/mysql:/etc/mysql \
	-e MYSQL_ROOT_PASSWORD=123456 -d mysql:5.7
mysql_down:
	docker stop data_sync_mysql && docker rm data_sync_mysql

es_up:
	docker run -d --name data_sync_es -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.6.0
	
	