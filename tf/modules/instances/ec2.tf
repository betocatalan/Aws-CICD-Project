# Public
resource "aws_instance" "ec2-public" {
  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id = var.public_subnet.id
  vpc_security_group_ids = [aws_security_group.public_sg.id]
  associate_public_ip_address = true
  key_name = aws_key_pair.key_access.key_name
  user_data = file("${path.module}/src/start.sh")

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "Django"
  }
 provisioner "local-exec" {
    command = "echo 'Public IP: ${self.public_ip}'"
  }
  
}


output "public_ip" {
  value = aws_instance.ec2-public.public_ip
}
