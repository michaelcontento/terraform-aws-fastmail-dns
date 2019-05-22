variable "zone_id" {}

variable "create_spf" {
  default = true
}

variable "dns_ttl" {
  default = 300
}

variable "create_email_autodiscover" {
  default = true
}

variable "create_carddav_autodiscover" {
  default = true
}

variable "create_caldav_autodiscover" {
  default = true
}

variable "create_mx" {
  default = true
}

variable "create_wildcard_mx" {
  default = true
}

variable "create_dkim_cnames" {
  default = true
}
