package db

type Config struct {
    DB struct {
        Production struct {
            Host string
            Username string
            Password string
            DBName string
        }
        Test struct {
            Host string
            Username string
            Password string
            DBName string
        }
    }
}

func NewConfig() *Config {

    c := new(Config)

    c.DB.Production.Host = "news_mysql"
    c.DB.Production.Username = "owner"
    c.DB.Production.Password = "mtmr-data"
    c.DB.Production.DBName = "mtmr-bot"

    c.DB.Test.Host = "localhost:3306"
    c.DB.Test.Username = "owner"
    c.DB.Test.Password = "mtmr-data"
    c.DB.Test.DBName = "mtmr-bot"

    return c
}
