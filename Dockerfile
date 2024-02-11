services:
  rabbitmq:
    hostname: 'mabbit'
    image: "rabbitmq:3-management"
    ports:
      - "15672:15672"
      - "5672:5672"
    volumes:
      - "./data:/var/lib/rabbitmq/mnesia/"
    networks:
      - rabbitmq

networks:
  rabbitmq:
    driver: bridge
