version: '2'
services:
  rabbitmq:
    container_name: some-rabbitmq
    image: marketplace.gcr.io/google/rabbitmq3
    environment:
      "RABBITMQ_ERLANG_COOKIE": "unique-erlang-cookie"
    ports:
      - '4369:4369'
      - '5671:5671'
      - '5672:5672'
      - '25672:25672'
