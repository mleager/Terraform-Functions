locals {
  a = "10.0.0.0/16"
  b = "10.0.0.0/24"
  c = "10.0.1.0/24"
}

output "cidr_host" {
  value = cidrhost(local.a, 24)
}

output "cidr_subnet" {
  value = cidrsubnet(local.a, 8, 4)
}

output "cidr_subnets" {
  value = cidrsubnets(local.a, 8, 8, 8, 8)
}

output "cidr_netmask" {
  value = cidrnetmask(local.a)
}
