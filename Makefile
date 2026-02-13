setup:
	@docker build --progress=plain -f Containerfile -t detoxify .

destroy:
	-@docker rm -fv detoxify

up: HTTP_PORT = "80"
up:
	@docker run \
		--name detoxify \
		--rm \
		-p 127.0.0.1:$(HTTP_PORT):80 \
		-d \
		detoxify
	@docker logs -f detoxify

down:
	-@docker stop detoxify

shell:
	@docker exec -it detoxify /bin/sh

test:
	@$(CURDIR)/tests/index.sh
