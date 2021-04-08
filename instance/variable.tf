variable "vm_name" {
    type = string
    description = "Nome da Instância"
    default = "vm1"
}

variable "create_vpc" {
    type = string
    default = "default"
}

variable "vm_type" {
    type = string
    description = "Tipo da VM"
    default = "f1-micro"
}

variable "zone" {
    type = string
    description = "Zone da VM"
    default = "us-central1-a"
}

variable "vm_disk" {
    type = string
    description = "Imagem do SO da VM"
    default = "debian-cloud/debian-9"
}