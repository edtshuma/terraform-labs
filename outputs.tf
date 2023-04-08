#--root/outputs.tf---

output "iam_developers_group_arn" {
    value = module.identity.developers_group_arn
 }