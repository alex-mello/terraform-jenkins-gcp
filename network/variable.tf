variable "vpc_name" {
    type = string
    description = "Nome da VPC"
    default = "vpc_network"
}

variable "subnet_true" {
  type = string
  description = "Auto Create VPC"
  default = "false"
}

variable "subnet_name" {
    type = string
    description = "Nome da Subnet"
    default = "subnet-us-east1"
}

variable "cidr_range" {
    type = string
    description = "CIDR da Rede"
    default = "192.168.0.0/24"
}

variable "region" {
    type = string
    description = "Nome da Região"
    default = "us-central1-a"
}

variable "network_id" {
    type = string
    description = "VPC da subnet"
    default = "network-terraform"
}

variable "fw_service" {
    type = string
    description = "Regra de Firewall da Rede Serviço WEB"
    default = "fw-service"
}

variable "fw_iap" {
    type = string
    description = "RegraFirewall para acessar as instancias privadas com IAP"
    default = "fw-iap"
}

variable "network_fw" {
    type = string
    description = "Regras de Firewall"
    default = "network-terraform"  
}

variable "icmp" {
    type = string
    description = "Protocolo ICMP"
    default = "icmp"
}

variable "tcp" {
    type = string
    description = "Protocolo TCP"
    default = "tcp"
}

variable "ports" {
    type = list(any)
    description = "Regras de Firewall Http e Https"
    default = [ "80", "443" ]
}


variable "tcp_iap" {
    type = string
    description = "Protocolo TCP IAP"
    default = "tcp"
}

variable "ports_iap" {
    type = list(any)
    description = "Regras de Firewall SSH e RDP para acesso IAP"
    default = [ "22", "3389" ]
}
