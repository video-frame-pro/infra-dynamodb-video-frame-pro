######### PREFIXO DO PROJETO ###########################################
variable "prefix_name" {
  description = "Prefixo para nomear todos os recursos do projeto"
  type        = string
}

######### AWS INFOS ####################################################
variable "aws_region" {
  description = "Região AWS"
  type        = string
  default     = "us-east-1"
}

######### DYNAMO INFOS #################################################
variable "metadata_table_name" {
  description = "Nome da tabela video_metadata"
  type        = string
  default     = "video_metadata"
}

######### VARIÁVEIS ###################################################
variable "environment" {
  description = "Ambiente (prod)"
  type        = string
  default     = "prod"
}
