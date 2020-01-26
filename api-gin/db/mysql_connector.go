package db

import (
    "github.com/jinzhu/gorm"
    _ "github.com/jinzhu/gorm/dialects/mysql"
)

var (
	db  *gorm.DB
	err error
)

type DB struct {
    Host string
    Username string
    Password string
    DBName string
    Connect *gorm.DB
}

func NewDB() *DB {
    c := NewConfig()
    return newDB(&DB{
        Host: c.DB.Production.Host,
        Username: c.DB.Production.Username,
        Password: c.DB.Production.Password,
        DBName: c.DB.Production.DBName,
    })
}

func NewTestDB() *DB {
    c := NewConfig()
    return newDB(&DB{
        Host: c.DB.Test.Host,
        Username: c.DB.Test.Username,
        Password: c.DB.Test.Password,
        DBName: c.DB.Test.DBName,
    })
}

func newDB(d *DB) *DB {
    // https://github.com/go-sql-driver/mysql#examples
    root := d.Username + ":" + d.Password + "@tcp(" + d.Host + ")/" + d.DBName + "?charset=utf8&parseTime=True&loc=Local"
    db, err = gorm.Open("mysql", root)
    if err != nil {
        panic(root)
    }
    d.Connect = db
    return d
}

func GetDB() *gorm.DB {
	return db
}
