package setting

import (
    "github.com/gin-gonic/gin"
    "github.com/gin-contrib/cors"
    "bot-api/controller"
    "bot-api/db"
)

type Routing struct {
    DB *db.DB
    Gin *gin.Engine
}

func NewRouting(db *db.DB) *Routing {
    r := &Routing{
        DB: db,
        Gin: gin.Default(),
    }
    r.setAccessFilterSetting()
    r.setRouting()
    return r
}

func (r *Routing) setAccessFilterSetting() {
    config := cors.DefaultConfig()
    config.AllowOrigins = []string{"http://localhost:8081", "http://localhost:8082"}
    r.Gin.Use(cors.New(config))
}

func (r *Routing) setRouting() {
	controller := controller.NewController()
    r.Gin.Group("/trains")
    {
        r.Gin.GET("/trains/:id", controller.SelectTrainIndex)
    }
}

func (r *Routing) Run(port string) {
    r.Gin.Run(port)
}
