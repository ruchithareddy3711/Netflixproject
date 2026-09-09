variable "Resource_group_name" {
  description = "RG name"
  type        = string
  default = "NFResourceGroup"
}

variable "location" {
  description = "Location of the resource group"
  type        = string
  default = "Central India"
}

variable "asp_name" {
  description = "App service plan name"
  type        = string
  default = "NFASP"
}

variable "web_app_name" {
  description = "App service name"
  type        = string
  default = "NFwebApp0711"
}