resource "aws_instance" "app_server" {
  ami                    = data.aws_ami.aws_linux_image.id
  instance_type          = var.app_ec2_type
  subnet_id              = data.aws_subnet.public_subnetOne.id
  vpc_security_group_ids = [aws_security_group.app_sg.id]
  key_name = var.keypair_name


  tags = {
    Name = "my-first-server"
  }
  associate_public_ip_address = true
}