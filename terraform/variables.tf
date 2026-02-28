variable "location" {
  default = "Central India"
}

variable "resource_group_name" {
  default = "devops-aks-rg"
}

variable "vnet_address_space" {
  default = ["10.0.0.0/16"]
}

variable "aks_subnet_prefix" {
  default = ["10.0.1.0/24"]
}

variable "tenant_id" {
  default = "YOUR_TENANT_ID"
}

variable "acr_name" {
  default = "devopsacr12345"
}

variable "keyvault_name" {
  default = "devops-keyvault-12345"
}