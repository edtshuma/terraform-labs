#--root/outputs.tf---

output "iam_developers_group_arn" {
    value = module.identity.developers_group_arn
 }


output "iam_developers_group_lambda_policy_arn" {
  value = module.identity.developers_lambda_policy_arn
}

output "iam_developers_group_s3_ec2_policy_arn" {
  value = module.identity.developers_s3_ec2_policy_arn
}
