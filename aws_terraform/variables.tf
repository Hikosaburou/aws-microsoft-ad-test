variable "pj-prefix" {
  description = "your project name"
  type        = string

  default = "ad-test"
}

variable "my_ip" {
  description = "Your IP address"
  type        = string
}

variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.

Example: ~/.ssh/terraform.pub
DESCRIPTION
  type        = string
}

variable "ad_domain_name" {
  description = "DNS name for AWS Directory Service"
  type = string
}

variable "ad_admin_password" {
  description = "Admin password for AWS Directory Service"
  type = string
}