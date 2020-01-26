package models

import (
    "bot-api/interface/db"
    "bot-api/interface/db/entity"
)

type TrainJrGroupsResponse struct {
	ID            int    `json:"id"`
    LineName      string `json:"line_name"`
    LineNameHira  string `json:"line_name_hira"`
	LineNameKana  string `json:"line_name_kana"`
	LineGroup     string `json:"line_group"`
}

func GetTrainID(id int) (TrainJrGroupsResponse, error){
	tModel := db.TrainRepository{}
	t, err := tModel.FindByID(id)
	if err != nil {
		return TrainJrGroupsResponse{}, nil
	}
	train := setTrainReponse(t)
    return train, nil
}


func setTrainReponse(t entity.TrainJrGroups) TrainJrGroupsResponse {
    train := TrainJrGroupsResponse{}
    train.ID = t.Id
	train.LineName = t.LineName
	train.LineNameHira = t.LineNameHira
	train.LineNameKana = t.LineNameKana
	train.LineGroup = t.LineGroup

    return train
}
