output "video_metadata_table_name" {
  description = "Nome da tabela video_metadata"
  value       = aws_dynamodb_table.video_metadata.name
}

output "video_metadata_table_arn" {
  description = "ARN da tabela video_metadata"
  value       = aws_dynamodb_table.video_metadata.arn
}

output "video_status_table_name" {
  description = "Nome da tabela video_status"
  value       = aws_dynamodb_table.video_status.name
}

output "video_status_table_arn" {
  description = "ARN da tabela video_status"
  value       = aws_dynamodb_table.video_status.arn
}
