FROM ghcr.io/home-assistant/base:3.19

WORKDIR /app

RUN apk add --no-cache python3 py3-pip git

RUN git clone https://github.com/toddaustin07/edgebridge.git .

RUN pip3 install -r requirements.txt

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
