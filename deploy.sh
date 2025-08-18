set -e

echo "Parando container antigo"
docker stop calculadora || true
docker rm calculadora || true

echo "Baixando imagem do DockerHub"
if [ -z "$DOCKER_USERNAME" ]; then
    echo "Error: DOCKER_USERNAME not set"
    exit 1
fi

docker pull "$DOCKER_USERNAME/calculadora:latest"

echo "Subindo novo container"
docker run -d \
    --name calculadora \
    --restart unless-stopped \
    -p 3000:3000 \
    "$DOCKER_USERNAME/calculadora:latest"

echo "Deploy completado com sucesso!"
