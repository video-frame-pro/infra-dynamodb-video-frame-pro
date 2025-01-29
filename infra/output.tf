######### OUTPUTS ##################################################

# Nome e ARN da tabela video_metadata
output "video_metadata_table_name" {
  description = "Nome da tabela video_metadata"
  value       = aws_dynamodb_table.metadata_table.name
}

output "video_metadata_table_arn" {
  description = "ARN da tabela video_metadata"
  value       = aws_dynamodb_table.metadata_table.arn
}