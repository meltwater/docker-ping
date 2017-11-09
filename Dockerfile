FROM alpine:3.6

RUN apk update && \
    apk add jq && \
    apk add curl

COPY ping /

HEALTHCHECK --interval=5s --timeout=3s \
    CMD ps aux | grep '[s]h ping' || exit 1
    
CMD ["sh", "ping"]
