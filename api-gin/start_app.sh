# MySQLサーバーが起動するまで待機する
until mysqladmin ping -h mysql -h"news_mysql" -u"owner" -p"mtmr-data" --silent; do
  echo 'waiting for mysqld to be connectable...'
  sleep 2
done

echo "app is starting...!"
exec go run main.go
