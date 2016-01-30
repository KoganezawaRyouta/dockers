# app settings
git clone https://github.com/KoganezawaRyouta/batch_coincheck.git app

# 全コンテナの削除
docker rm `docker ps -a -q`

# Exitしているコンテナを削除
docker rm `docker ps -a | grep Exited | awk '{print $1}'`

# イメージの削除
docker rmi $(docker images | awk '/^<none>/ { print $3 }')

# 全imageを削除する場合
docker rmi $(docker images | awk '{print $3}')
