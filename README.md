# Projeto DevOps com Terraform, AWS e Docker

## Descrição
Este projeto implementa uma aplicação conteinerizada e realiza o deploy automatizado na AWS utilizando **Terraform**, **Docker** e **GitHub Actions**.  
O objetivo é demonstrar um fluxo **DevOps completo** de provisionamento, conteinerização e automação de deploy.

---

## Tecnologias Utilizadas
- **Terraform** → Provisionamento da infraestrutura
- **Docker** → Conteinerização da aplicação
- **GitHub Actions** → CI/CD
- **AWS S3** → Armazenamento do Terraform state
- **AWS EC2** → Hospedagem da aplicação

---

## Fluxo 
    1.Commit no GitHub 
    2.GitHub Actions CI/CD
    3.Terraform apply na AWS
    4.S3 armazena o state remoto
    5.EC2 provisionada
    6.Deploy do Docker
    7.Aplicação no a