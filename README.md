# Exercício da Pós de Engenharia de Dados

Este exercício da pós de Engenharia de Dados envolve a ingestão e análise dos dados de vínculos públicos da RAIS 2020, disponíveis em http://pdet.mte.gov.br/microdados-rais-e-caged.

Foram utilizados as seguintes ferramentas/tecnologias:

- Terraform para provisionamento da Infra, com estado gerenciado no Terraform Cloud;
- AWS Lambda para provisionar as jobs do AWS EMR;
- AWS EMR para processar o dado ingerido na camada Bronze e jogar em parquets para a camada Silver do "Lake" (Bucket S3);
- AWS Glue para configurar o catálogo de dados;
- AWS Athena para usar o catalogo criado para varrer a camada Silver do lake e fazer as análises em SQL;

## Passo-a-passo

Criei um usuário do IAM chamado `GitHub` na AWS e gerei credenciais para acesso. Por hora, como é um exercício, apenas dei permissão de administrador.

Criei um workspace no Terraform Cloud com o fluxo orientado por API para utilizar no GitHub Actions.

https://app.terraform.io/app/lucaslehnen/workspaces/exercise-tf-s3-emr-glue-athena

Adicionei as duas variáveis de ambiente no Terraform Cloud para esse workspace:
- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY

Peguei um novo token no Terraform Cloud: https://app.terraform.io/app/settings/tokens?utm_source=learn e criei uma secret no repositório do Github chamada `TERRAFORMCLOUDTOKEN`.



Fontes:

- https://developer.hashicorp.com/terraform/tutorials/automation/github-actions
- https://github.com/neylsoncrepalde/igti_edc_mod1_desafio_final_rais

