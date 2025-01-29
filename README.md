
<p align="center">
  <img src="https://i.ibb.co/zs1zcs3/Video-Frame.png" width="30%" />
</p>

---

Este repositório contém a implementação da **infraestrutura do Amazon DynamoDB** para o projeto **Video Frame Pro**, responsável por armazenar os metadados dos vídeos e os status de processamento. O objetivo é provisionar tabelas de maneira eficiente e segura, utilizando o **Terraform** para automação.

---

## Funcionalidades

Este repositório contém a infraestrutura para gerenciar as seguintes tabelas no **Amazon DynamoDB**:

1. **Tabela `video_metadata`** (Gerenciamento):
   - Armazena informações gerais sobre os vídeos enviados pelos usuários.
   - **Partition Key**: `video_id`
   - **Sort Key**: `user_name`

2. **Tabela `video_status`** (Status de Processamento):
   - Armazena o status do processamento de cada vídeo.
   - **Partition Key**: `video_id`

3. **Configurações de Cobrança**:
   - Modo de cobrança **`PROVISIONED`**, aproveitando o Free Tier da AWS.

4. **Integração com Outros Serviços AWS**:
   - As tabelas serão utilizadas pelas Lambdas para consultar, atualizar e armazenar dados.

---

## Tecnologias

<p>
  <img src="https://img.shields.io/badge/AWS-232F3E?logo=amazonaws&logoColor=white" alt="AWS" />
  <img src="https://img.shields.io/badge/Terraform-7B42BC?logo=terraform&logoColor=white" alt="Terraform" />
  <img src="https://img.shields.io/badge/DynamoDB-4053D6?logo=amazonaws&logoColor=white" alt="DynamoDB" />
  <img src="https://img.shields.io/badge/GitHub-ACTIONS-2088FF?logo=github-actions&logoColor=white" alt="GitHub Actions" />
</p>

---

## Estrutura do Repositório

```
infra/
├── main.tf            # Definição das tabelas DynamoDB com Terraform
├── outputs.tf         # Outputs, como ARNs das tabelas
├── variables.tf       # Definições de variáveis Terraform
├── terraform.tfvars   # Variáveis específicas para o deploy
```

---

## Como Funciona

1. **Tabelas DynamoDB**:
   - A tabela `metadata` armazena detalhes dos vídeos, status e usuario.

2. **Automação com Terraform**:
   - A infraestrutura das tabelas é provisionada automaticamente pelo Terraform, garantindo consistência e segurança.

3. **Automação de Deploy**:
   - Este repositório utiliza o **GitHub Actions** para automatizar o deploy da infraestrutura.

---

## Passos para Configuração

### 1. Pré-Requisitos

Certifique-se de ter as credenciais da AWS configuradas corretamente e o **AWS CLI** instalado, além de ter o **Terraform** instalado para o deploy da infraestrutura.

### 2. Configuração das Tabelas DynamoDB

1. No diretório **`infra`**, configure o arquivo `terraform.tfvars` com os valores necessários, como o nome das tabelas e a região:

```hcl
aws_region = "us-east-1"
environment = "prod"
```

2. Execute os comandos Terraform para provisionar as tabelas DynamoDB:

```bash
cd infra-dynamodb
terraform init
terraform apply -auto-approve
```

3. Verifique no Console AWS se as tabelas foram criadas corretamente, com os nomes e configurações esperados.

---

## CI/CD com GitHub Actions

Este repositório utiliza o **GitHub Actions** para automação do deploy da infraestrutura com Terraform. O pipeline é acionado automaticamente ao realizar um push para o branch `main`.

O GitHub Actions irá:

- Executar o Terraform para provisionar as tabelas DynamoDB.
- Validar as configurações Terraform antes de aplicar as mudanças.
- Garantir que as tabelas estejam configuradas corretamente em diferentes ambientes.
