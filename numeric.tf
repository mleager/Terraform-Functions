locals {
  num_a = -12.4
  num_b = 5.1
  num_c = 24
  num_d = 3
}

output "absolute" {
  value = abs(local.num_a)
}

output "ceiling" {
  value = ceil(local.num_b)
}

output "max" {
  value = max(local.num_c, 15, 51)
}

output "power" {
  value = pow(local.num_d, 2)
}
