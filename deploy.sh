set -e

echo "Parando container antigo"
docker stop minha-app || true
docker rm minha-app || true

echo "Buildando nova imagem"
docker build -t minha-app .

echo "Subindo novo container"
docker run -d --name minha-app -p 80:80 minha-app