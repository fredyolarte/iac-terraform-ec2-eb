
resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/xvdf"
  volume_id   = 	var.volume_id
  instance_id = aws_instance.meilisearch.id
}


# Creación de la instancia EC2
resource "aws_instance" "meilisearch" {
  ami  = var.ami_id
  instance_type     = var.instance_type 
  key_name          = var.key_name   
  availability_zone = var.availability_zone
  tags = {
    Name = var.instance_name
  }
  
  # Configuración de la red y la seguridad
  vpc_security_group_ids      = var.security_group   
  subnet_id                   = join(",", var.subnet_id) 
  private_ip = "10.172.10.200"
  associate_public_ip_address = true

}
