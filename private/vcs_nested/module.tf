module "web_server_sg" {
  source = "github.com/kartikp10/terraform-aws-security-group//modules/http-80"
  # source = "git::https://github.com/kartikp10/terraform-aws-security-group.git//modules/http-80?ref=main"

  name        = "web-server"
  description = "Security group for web-server with HTTP ports open within VPC"
  vpc_id      = "vpc-12345678"

  ingress_cidr_blocks = ["10.10.0.0/16"]
}
