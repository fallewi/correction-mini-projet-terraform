
variable "az" {
  type        = string
  default     = "us-east-1b"
  description = "Fournit la zone de disponibilité de mon EBS"
}


variable "disk_size" {
  type        = number
  default     = 5
  description = "La taille de mon EBS"
}


variable "maintainer" {
  type        = string
  default     = "lewis"
  description = "Fournit le nom du maintainer"
}





