#Script para criar o Serviço e Rota no Kong

echo 'Digite o Nome do Serviço:'
read service
echo 'Digite o nome do container e a porta que ele expoe sem o http (ex:meuapp:5000)'
read container
echo 'Digite o a path'
read path


curl -i -X POST --url http://localhost:8001/services/ --data "name=$service" --data "url=http://$container"

curl -i -X POST --url http://localhost:8001/services/$service/routes --data "paths[]=/$path"
