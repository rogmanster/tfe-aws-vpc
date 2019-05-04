output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "ami_id" {
  value = "${data.null_data_source.values.outputs}"
}
