set -e

echo "Parando container antigo"
docker stop minha-app || true
docker rm minha-app || true

echo "Baixando imagem do DockerHub"
docker pull $DOCKER_USERNAME/minha-app:latest

echo "Subindo novo container"
docker run -d --name minha-app -p 80:80 $DOCKER_USERNAME/minha-app:latest
