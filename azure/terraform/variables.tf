variable "app_name" {
    type = string
    description = "Our app name"
}

variable "resource_group_name_prefix" {
  type = string
  description   = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable resource_group_location {
    type = string
    description = "Azure location for hosting resources"
}