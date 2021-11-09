FROM ubuntu

RUN apt-get update && apt-get install wget curl -y
RUN curl -fsSL https://code-server.dev/install.sh | sh
RUN export PASSWORD="123456"
CMD code-server --port 8080 --host 0.0.0.0 --auth password  
