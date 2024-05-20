FROM alpine:latest as builder
WORKDIR /root
RUN apk add --no-cache git make build-base 
COPY . vlmcsd/
#    git clone --branch master --single-branch https://github.com/Wind4/vlmcsd.git && \
RUN cd vlmcsd/ && \
    make

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /root/vlmcsd/bin/vlmcsd /usr/bin/vlmcsd
EXPOSE 1688/tcp
CMD [ "/usr/bin/vlmcsd", "-D", "-d" , "-l" , "/dev/stdout"]