
<p align="center">
  <img src="https://i.ibb.co/zs1zcs3/Video-Frame.png" />
</p>

# infra-dynamodb-video-frame-pro

Este repositório é responsável pela configuração da **Tabela DynamoDB** que armazenará o status de processamento dos vídeos e outras informações relacionadas, como o número de frames extraídos.

## Funções
- Criar a **tabela DynamoDB** para armazenar os dados dos vídeos.
- Configurar a tabela para armazenar o **status** do processamento e outras informações relevantes.

## Tecnologias
- AWS DynamoDB

## Como usar
1. Configure o ambiente para a tabela DynamoDB.
2. Execute os scripts para provisionar a tabela com a chave primária **videoId**.
3. Conceda permissões para o **Lambda** e o **API Gateway** acessarem a tabela.
