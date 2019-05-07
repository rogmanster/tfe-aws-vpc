output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "public_subnets" {
  value = "${module.public_subnets}"

output "private_subnets" {
  value = "${module.private_subnets}"
