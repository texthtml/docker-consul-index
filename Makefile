NAME=texthtml/consul-index
DEV_RUN_CONSUL_URL?=consulhost:8500
DEV_RUN_OPTS?=

default:
	docker build -f Dockerfile -t $(NAME):dev .

run: default
	docker run --rm -e CONSUL_URL=${DEV_RUN_CONSUL_URL} ${DEV_RUN_OPTS} texthtml/consul-loadbalancer
