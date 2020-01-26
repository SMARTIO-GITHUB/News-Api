# mtmr-bot

## How to Run
```
$ docker-compose up -d
$ docker exec -it news_api-gin bash
$ go run main.go
```

## How to Use
1. api_server http://localhost:8080/
2. swagger-editor  http://localhost:8081/
3. swagger-ui http://localhost:8082/

## Environment
- GORM
- Gin
- GoQuery
- swaggo (future plan)

## request example
```
$ curl localhost:8080/trains/11

{"id":1,"line_name":"上越線","line_name_hira":"じょうえつせん","line_name_kana":"ジョウエツセン","line_group":"direction_tohoku"}
```
