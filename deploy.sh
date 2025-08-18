set -e

echo "Parando container antigo"
docker stop calculadora || true
docker rm calculadora || true

echo "Baixando imagem do DockerHub"
docker pull $DOCKER_USERNAME/calculadora:latest

echo "Subindo novo container"
docker run -d --name calculadora -p 80:80 $DOCKER_USERNAME/calculadora:latest
