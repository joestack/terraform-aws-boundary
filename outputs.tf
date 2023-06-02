output "dns_name" {
  description = "The public DNS name of the controller load balancer"
  value       = module.controllers.dns_name
}

# output "s3command" {
#   description = "The S3 cp command used to display the contents of the cloud-init-output.log"

#   value = format(
#     "aws s3 cp s3://%s/%s -",
#     aws_s3_bucket.boundary.id,
#     data.aws_s3_bucket_objects.cloudinit.keys[0]
#   )
# }

output "bastion_ip" {
  value = module.controllers.bastion_ip
}

## TEST
output "controller_ips" {
  value = module.controllers.ip_addresses
}

output "dns_name_set" {
  value = aws_route53_record.alb.fqdn
}
