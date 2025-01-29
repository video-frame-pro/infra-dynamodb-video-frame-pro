######### OUTPUTS ##################################################

# Nome e ARN da tabela video_metadata
output "video_metadata_table_name" {
  description = "Nome da tabela video_metadata"
  value       = aws_dynamodb_table.video_metadata.name
}

output "video_metadata_table_arn" {
  description = "ARN da tabela video_metadata"
  value       = aws_dynamodb_table.video_metadata.arn
}