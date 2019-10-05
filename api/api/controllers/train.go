package controllers

import (
	"bot-api/models"

	"github.com/astaxie/beego"
)

// Operations about trainInfo
type TrainController struct {
	beego.Controller
}

// @Title Get
// @Description find placeCd by objectid
// @Param	placeCd		path 	string	true		"the objectid you want to get"
// @Success 200 {placeCd} models.Object
// @Failure 403 :placeCD is empty
// @router /:placeCd [get]
func (d *TrainController) GetOnePlaceCd() {
	var placeCd = d.Ctx.Input.Param(":placeCd")
	if placeCd != "" {
		ob, err := models.GetOnePlaceCd(placeCd)
		if err != nil {
			d.Data["json"] = err.Error()
		} else {
			d.Data["json"] = ob
		}
	}
	d.ServeJSON()
}

// @Title GetAll
// @Description get all trains
// @Success 200 train models.delayTrain
// @Failure 403 :train is empty
// @router / [get]
func (d *TrainController) GetAllTrain() {
	obs := models.GetAllTrain()
	d.Data["json"] = obs
	d.ServeJSON()
}
