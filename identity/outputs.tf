#--identity/outputs.tf---

output "developers_group_arn" {
  value = aws_iam_group.developers.arn
}
