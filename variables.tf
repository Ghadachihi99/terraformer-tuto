# Variable for environment (e.g., production, development, etc.)
variable "environment" {
  type        = string
  description = "The environment for the resources (e.g., production, development)"
  default     = "production" # You can remove the default if you want it to be mandatory.
}

variable "nic_names" {
  type    = list(string)
  default = ["vm1-nic", "vm2-nic", "vm3-nic"]
}

variable "toProd_CIDRs" {
  type        = list(string)
  description = "allowed CIDRs block for the production enviorement"
  default     = ["10.0.0.0/16", "192.168.1.0/24"]

}
variable "toDev_CIDRs" {
  type        = list(string)
  description = "allowed CIDRs block for the development enviorement"
  default     = ["172.16.0.0/12"]

}