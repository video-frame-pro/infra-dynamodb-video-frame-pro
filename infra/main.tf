######### PROVEDOR AWS #################################################
provider "aws" {
  region = var.aws_region
}

######### TABELA video_metadata #########################################
resource "aws_dynamodb_table" "metadata_table" {
  name           = "${var.prefix_name}-${var.metadata_table_name}-table"
  billing_mode   = "PROVISIONED" # Free Tier
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "video_id"
  range_key      = "user_name"

  attribute {
    name = "video_id"
    type = "S" # String
  }

  attribute {
    name = "user_name"
    type = "S" # String
  }

  # Criar um Global Secondary Index (GSI) para buscar apenas pelo video_id
  global_secondary_index {
    name               = "VideoIdIndex"
    hash_key           = "video_id"
    projection_type    = "ALL"
    read_capacity      = 1
    write_capacity     = 1
  }

  tags = {
    Name        = var.metadata_table_name
    Environment = var.environment
  }
}
