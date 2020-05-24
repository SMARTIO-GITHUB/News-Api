FROM golang:1.11

RUN apt-get update -qq && \
    apt-get install -y default-mysql-client vim

ENV GOPATH /go
ENV PATH $PATH:$GOPATH/bin

RUN mkdir -p /go/src/bot-api
COPY . /go/src/bot-api
WORKDIR /go/src/bot-api

RUN go get -u github.com/jinzhu/gorm
RUN go get -u github.com/jinzhu/gorm/dialects/mysql
RUN go get -u github.com/PuerkitoBio/goquery
RUN go get -u github.com/gin-gonic/gin
RUN go get -u github.com/gin-contrib/cors

CMD ["sh", "./start_app.sh"]
