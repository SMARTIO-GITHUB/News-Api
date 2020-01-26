package db

import (
    "errors"
    "bot-api/interface/db/entity"
    "bot-api/db"
)

type TrainRepository struct {
}

func (repo *TrainRepository) FindByID(id int) (entityOut entity.TrainJrGroups, err error) {
    train := entity.TrainJrGroups{}
    db := db.GetDB()
    db.Where("id=?",id).First(&train)
    if train.Id <= 0 {
        return entity.TrainJrGroups{}, errors.New("train is not found")
    }
    return train, nil
}
