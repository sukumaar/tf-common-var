resource "aws_instance" "my_instance" {
  ami           = "ami-abcdxyz"  # Update with a valid AMI ID
  instance_type = "t2.micro"
  tags = {
    Name = "${module.common_shared_vars.vm_prefix}_${var.vm_name}"
  }
}
