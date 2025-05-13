# [detoxify-flask-container](https://github.com/nedix/detoxify-flask-container)

HTTP API to classify the toxicity of text messages.

## Usage

#### 1. Start the service

The following command starts the service on port `8080`.

```shell
docker run --pull always --rm --name detoxify \
    -p 8080:80 \
    nedix/detoxify
```

#### 2. Classify toxicity

This command sends a HTTP request to classify the toxicity of a message.

```shell
curl '127.0.0.1:8080?text=foobar'
```

<hr>

## Attribution

- [Detoxify] ([License](https://raw.githubusercontent.com/unitaryai/detoxify/master/LICENSE))
- [Flask] ([License](https://raw.githubusercontent.com/pallets/flask/main/LICENSE.txt))

[Detoxify]: https://github.com/unitaryai/detoxify
[Flask]: https://github.com/pallets/flask
