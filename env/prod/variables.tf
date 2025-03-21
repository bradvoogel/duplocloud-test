variable "env" {
  type        = string
  description = "environment name"
}

variable "bucket" {
  type        = string
  description = "statefile bucket name"
}

variable "region" {
  type        = string
  description = "aws region"
}

variable "vpc_name" {
  type        = string
  description = "vpc name"
}

variable "eks_name" {
  type        = string
  description = "cluster name"
}


