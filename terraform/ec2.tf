resource "aws_instance" "web_server" {
  ami           = "ami-0a271ea31efe7b551"
  instance_type = "t4g.micro"

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install -y docker.io
              systemctl enable docker
              systemctl start docker
              usermod -aG docker ubuntu
              EOF

  tags = {
    Name = "terraform-web-server"
  }
}