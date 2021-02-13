FROM alpine:3.10

COPY . /biscuit
WORKDIR /biscuit

ENTRYPOINT ["/biscuit/entrypoint.sh"]
