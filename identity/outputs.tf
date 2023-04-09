#--identity/outputs.tf---

output "developers_group_arn" {
  value = aws_iam_group.developers.arn
}


output "developers_lambda_policy_arn" {
  value = aws_iam_policy.developers_lambda_policy.arn
}