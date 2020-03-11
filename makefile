# 重新加载配置文件
restart:
	docker-compose up -d --build

remove_all:
	docker stop data_sync_mysql1 data_sync_es data_sync_kibana data_sync_logstash && \
	docker rm data_sync_mysql1 data_sync_es data_sync_kibana data_sync_logstash
	
	