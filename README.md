# docker-consul-index

link to consul services

## Usage

running the container:

```bash
docker run --name=index -e CONSUL_URL=consulhost:8500 texthtml/consul-index
```

All services registered on your consul cluster with the tag `VHOST` will be listed on a webpage served by this container on port 80.
