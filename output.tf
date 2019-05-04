output "vpc_id" {
  value = "${module.vpc.vpc_id}"
}

output "ami_id" {
  value = "${aws_ami.rhel_ami.id}"
}
