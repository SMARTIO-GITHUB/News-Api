package models

import (
	"errors"
)

var (
	Trains map[string]*Train
)

type Train struct {
	Place     string
	DelayTime string
	Content   string
}

func init() {
	Trains = make(map[string]*Train)
	Trains["1"] = &Train{
		Place : "京急線",
		DelayTime : "",
		Content : "１０分の遅れ",
	}
}

func GetOnePlaceCd(PlaceCd string) (Train *Train, err error) {
	if v, ok := Trains[PlaceCd]; ok {
		return v, nil
	}
	return nil, errors.New("Train Not Exist")
}

func GetAllTrain() map[string]*Train {
	return Trains
}
