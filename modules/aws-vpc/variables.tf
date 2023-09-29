# Project: Frankfurt-VPC
#
# Variables

# CIDR
variable "vpc_cidr" {
  description = "cidr range of the frankfurt vpc"
  type        = string
  default     = "10.0.0.0/16"
}

# Tenancy
variable "tenancy" {
  description = "Instance tenancy type"
  type        = string
  default     = "default"
}

# Tags
variable "vpc_tags" {
  description = "VPC Tags"
  type        = map(string)
  default = {
    Name        = "frankfurt-vpc"
    Environment = "Dev"
  }
}

# Availability Zones
variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b"]

}

# Public_subnets
variable "public_subnet_cidr" {
  description = "cidr range for public subnets"
  type        = list(string)
  default     = ["10.0.0.0/20", "10.0.32.0/20"]
}

variable "private_subnet_cidr" {
  description = "cidr range for public subnets"
  type        = list(string)
  default     = ["10.0.16.0/20", "10.0.48.0/20"]
}
