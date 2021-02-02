# Preparing the final image
FROM alpine:3.13.1
WORKDIR /app
RUN apk add --no-cache mailcap
EXPOSE 2121-2130
COPY ftpserver /bin/ftpserver
ENTRYPOINT [ "/bin/ftpserver" ]
