package models

import (
    "bot-api/interface/db"
    "bot-api/interface/db/entity"
)

type TrainJrGroupsResponse struct {
	Id            int    `json:"id"`
    LineName      string `json:"lineName"`
    LineNameHira  string `json:"lineNameHira"`
	LineNameKana  string `json:"lineNameKana"`
	LineGroup     string `json:"lineGroup"`
}

func GetTrainID(id int) (TrainJrGroupsResponse, error){
	tModel := db.TrainRepository{}
	t, err := tModel.FindByID(id)
	if err != nil {
		return TrainJrGroupsResponse{}, nil
	}
	train := setTrainResponse(t)
    return train, nil
}


func setTrainResponse(t entity.TrainJrGroups) TrainJrGroupsResponse {
    train := TrainJrGroupsResponse{}
    train.Id = t.Id
	train.LineName = t.LineName
	train.LineNameHira = t.LineNameHira
	train.LineNameKana = t.LineNameKana
	train.LineGroup = t.LineGroup

    return train
}
