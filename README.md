# Projeto DevOps com Terraform, AWS e Docker

Este projeto implementa uma aplicação conteinerizada e realiza o deploy automatizado na AWS utilizando **Terraform**, **Docker** e **GitHub Actions**.  
O objetivo é demonstrar um fluxo **DevOps completo** de provisionamento, conteinerização e automação de deploy.

---

## Descrição do Projeto

Uma aplicação minimalista de **calculadora** que realiza as operações:

- Soma (`add`)
- Subtração (`sub`)
- Multiplicação (`mul`)
- Divisão (`div`, com tratamento de divisão por zero)
- Raiz (`raiz`, com tratamento para que o indice da raiz não possa ser zero)

---

## Tecnologias Utilizadas
- **Terraform** → Provisionamento da infraestrutura
- **Docker** → Conteinerização da aplicação
- **GitHub Actions** → CI/CD
- **AWS S3** → Armazenamento do Terraform state
- **AWS EC2** → Hospedagem da aplicação

---

## Fluxo 

### Integração Contínua (CI)
1. Push ou Pull Request no branch `main`.
2. Pipeline GitHub Actions executa:
    - Checkout do código
    - Instalação de dependências (`npm install`)
    - Build (`npm run build`)
    - Testes automatizados (`npm test`)
3. Critério de sucesso: build e testes passados.

### Entrega Contínua (CD)
1. Após CI, GitHub Actions:
   - Build da imagem Docker
   - Push para DockerHub
   - Conecta à EC2 e:
     - Para container antigo
     - Substitui pela nova imagem
     - Inicia container atualizado
2. Resultado: deploy automático e seguro da versão mais recente.

## Infraestrutura

- Terraform cria e gerencia:
  - Bucket S3 para armazenamento do state
  - EC2 para rodar o container da aplicação
- Configurações de segurança e versionamento automatizadas.
- Scripts de infraestrutura dentro de `infra/terraform`.
