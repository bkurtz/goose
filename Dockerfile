FROM golang

RUN mkdir /db
WORKDIR /

VOLUME ["/db"]

ADD . /go/src/bitbucket.org/liamstask/goose
RUN go get bitbucket.org/liamstask/goose/cmd/goose

ENTRYPOINT ["/go/bin/goose"]
CMD ["status"]
