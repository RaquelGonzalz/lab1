variable "subscription_id" {
  description = "ID de la suscripcion de Azure"
  type        = string
}

variable "project_name" {
  description = "Nombre del proyecto"
  type        = string
  default     = "integrador"
}

variable "application_name" {
  description = "Nombre de la aplicacion"
  type        = string
  default     = "integrador"
}

variable "environment" {
  description = "Ambiente de despliegue"
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Region de Azure"
  type        = string
  default     = "eastus"
}

variable "length" {
  description = "Longitud del sufijo aleatorio"
  type        = number
  default     = 4
}

variable "vnet_address_space" {
  description = "Espacio de direcciones de la red virtual"
  type        = list(string)
  default     = ["10.10.0.0/16"]
}

variable "tags" {
  description = "Etiquetas para los recursos de Azure"
  type        = map(string)
  default = {
    managed_by  = "terraform"
    owner       = "utvt"
    cost_center = "laboratorio"
  }
}