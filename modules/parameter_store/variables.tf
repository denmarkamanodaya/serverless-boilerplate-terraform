variable "name" {
  type = string
}

variable "type" {
  type = string
}

variable "encryption" {
  default = true
  type    = bool
}

variable "tier" {
  default = "Standard"
  type    = string
}
