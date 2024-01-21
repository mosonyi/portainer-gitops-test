FROM debian:bookworm-slim

RUN apt update
RUN apt install -y sendemail

ADD entrypoint.sh /

RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]