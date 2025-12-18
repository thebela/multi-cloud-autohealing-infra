resource "aws_instance" "app" {
  ami           = "ami-0e306788ff2473ccb"
  instance_type = var.instance_type

  user_data = file("${path.module}/userdata.sh")

  tags = {
    Name = var.project_name
  }
}
