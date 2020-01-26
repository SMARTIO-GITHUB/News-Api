package controller

import(
	"bot-api/models"
	"bot-api/celler/res"
	"net/http"
	"strconv"
	"github.com/gin-gonic/gin"
)


func (c *Controller) SelectTrainIndex(ctx *gin.Context) {
    id, _ := strconv.Atoi(ctx.Param("id"))
    //id, _ := strconv.Atoi(ctx.Query("id"))
    train, err := models.GetTrainID(id)
    if err != nil {
        res.NewError(ctx, http.StatusNotFound, err)
        return
    }
    ctx.JSON(http.StatusOK, train)
}
