variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "metadata_table_name" {
  description = "Nome da tabela video_metadata"
  type        = string
  default     = "video_metadata"
}

variable "status_table_name" {
  description = "Nome da tabela video_status"
  type        = string
  default     = "video_status"
}

variable "environment" {
  description = "Ambiente (prod)"
  type        = string
  default     = "prod"
}
