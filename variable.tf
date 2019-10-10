variable "do_token" {
  description = "access to API Vscale"
}

variable "vscale_msk" {
  description = "vscale MSK data"
  default     = "msk0"
}


variable "vscale_centos_7" {
  description = "centos"
  default     = "centos_7_64_001_master"
}


variable "vscale_rplan" {
  type = "map"
  default = {
    "s"   = "small"
    "m"   = "medium"
    "l"   = "large"
    "xl"  = "huge"
    "xxl" = "monster"
  }
}



