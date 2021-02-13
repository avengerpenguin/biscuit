FROM alpine:3.10

RUN apk add tree

COPY . /biscuit
WORKDIR /biscuit

ENTRYPOINT ["/biscuit/entrypoint.sh"]
