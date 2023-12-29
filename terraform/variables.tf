variable "private_subnets" {
  default = ["subnet-06ea69917620088ec","subnet-06a06eb553f07e95c"]
}

variable "volume_id" {
  default = "vol-05d90d4b68735dd9b"
}

variable "ami_id" {
  default = "ami-0c40194f14c844b41"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "utamsys_master_keypairs"
}

variable "availability_zone" {
  default = "us-east-1a"
}

variable "instance_name" {
  default = "environment-meilisearch-server"
}

variable "security_group" {
  default = ["sg-068e40cb38f09974a"]
}

variable "subnet_id" {
  default = ["subnet-092e16f72ad889ce4"]
}