output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "ami_id" {
  value = "${data.aws_ami.rhel_ami.id}"
}
