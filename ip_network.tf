locals {
  ip = "10.0.0.0/16"
}

output "cidr_host" {
  value = cidrhost(local.ip, 24)
}

output "cidr_subnet" {
  value = cidrsubnet(local.ip, 8, 4)
}

output "cidr_subnets" {
  value = cidrsubnets(local.ip, 8, 8, 8, 8)
}

output "cidr_netmask" {
  value = cidrnetmask(local.ip)
}
