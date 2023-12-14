FROM ubuntu

# Example; install htop by default
RUN apt update -y && apt install -y wget curl

# RUN  groupadd -r mygroup && useradd -r -g mygroup myuser

# USER myuser
# RUN usermod -u 1000 firefox
RUN mkdir -p /config

CMD ["docker-compose", "up", "-d"]
