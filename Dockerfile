FROM ubuntu

RUN apt-get update && apt-get install curl -y
RUN curl -fsSL https://code-server.dev/install.sh | sh

CMD code-server --port $PORT --host 0.0.0.0 --auth password  
