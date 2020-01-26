package main

import (
	"bot-api/setting"
	"bot-api/db"
)

func main() {
    db := db.NewDB()
	r := setting.NewRouting(db)
    r.Run(":8080")
}
