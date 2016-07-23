FROM index.tenxcloud.com/ericuni/base:latest

## RabbitMQ
RUN apt-get install -y --no-install-recommends \
		rabbitmq-server \
		python-pip \
	&& pip install pika

CMD ["/bin/bash"]

