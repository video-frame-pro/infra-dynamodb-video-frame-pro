provider "aws" {
  region = var.aws_region
}

# Tabela video_metadata
resource "aws_dynamodb_table" "video_metadata" {
  name           = var.metadata_table_name
  billing_mode   = "PROVISIONED" # Free Tier
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "videoId"
  range_key      = "username"

  attribute {
    name = "videoId"
    type = "S" # String
  }

  attribute {
    name = "username"
    type = "S" # String
  }

  tags = {
    Name        = var.metadata_table_name
    Environment = var.environment
  }
}

# Tabela video_status
resource "aws_dynamodb_table" "video_status" {
  name           = var.status_table_name
  billing_mode   = "PROVISIONED" # Free Tier
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "videoId"

  attribute {
    name = "videoId"
    type = "S" # String
  }

  tags = {
    Name        = var.status_table_name
    Environment = var.environment
  }
}
