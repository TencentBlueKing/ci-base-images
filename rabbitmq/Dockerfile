FROM rabbitmq:3.7
RUN apt update && apt install -y wget
RUN wget https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.8.0/rabbitmq_delayed_message_exchange-3.8.0.ez -O /opt/rabbitmq/plugins/rabbitmq_delayed_message_exchange-3.8.0.ez
RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange