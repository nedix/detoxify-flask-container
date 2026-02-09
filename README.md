# [detoxify-flask-container][project]

HTTP API to classify the toxicity of text messages.


## Usage


### 1. Start the container

The following command will start the container using port `80` for the API.

```shell
docker run --rm --pull always --name detoxify \
    -p 127.0.0.1:80:80 \
    nedix/detoxify
```


### 2. Classify toxicity

This command sends a HTTP request to classify the toxicity of a message.

```shell
curl '127.0.0.1:80?text=foobar'
```


[project]: https://hub.docker.com/r/nedix/detoxify
