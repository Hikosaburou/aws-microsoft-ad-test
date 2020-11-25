resource "aws_directory_service_directory" "test" {
  name     = var.ad_domain_name
  password = var.ad_admin_password
  size     = "Small"
  type     = "SimpleAD"

  vpc_settings {
    vpc_id     = aws_vpc.main.id
    subnet_ids = [aws_subnet.private-a.id, aws_subnet.private-c.id]
  }

  tags = {
    Project = var.pj-prefix
  }
}
