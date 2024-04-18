variable "rg_backend_name" {
  type = string
  description = "Name of the RG"
}

variable "rg_backend_location" {
  type = string
  description = "Name of the SA accesskey"
}

variable "sa_backend_name" {
  type = string
  description = "Name of the SA"
}

variable "sc_backend_name" {
  type = string
  description = "Name of the SA accesskey"
}

variable "kv_backend_name" {
  type = string
  description = "Name of the Key vauilt"
}

variable "sa_backend_accesskey_name" {
  type = string
  description = "Name of the SA accesskey"
}

variable "sc_backend" {
  type = string
  description = "Name of the SA container"
  default = "sacontainer"
}







