output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "ami_id" {
  value = "${null_data_source.values.outputs}"
}
