variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
}

variable "public_key_path" {
  description = "Path to the public SSH key file"
  type        = string
  default = "~/.ssh/id_rsa.pub"
}


