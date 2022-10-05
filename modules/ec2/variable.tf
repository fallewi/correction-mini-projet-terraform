variable "instance_template" {
  type        = string
  default     = "t2.nano"
  description = "template à utiliser pour mon instance"
}

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "Région à utiliser pour mon instance"
}


variable "az" {
  type    = string
  default = "us-east-1b"

}






