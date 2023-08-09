locals {
  a = -12.4
  b = 5.1
  c = [12, 54, 3]
  d = tuple(3, 2)
}

output "absolute" {
  value = abs(local.a)
}

output "ceiling" {
  value = ceil(local.b)
}

output "max" {
  value = max(local.c)
}

output "power" {
  value = pow(local.d)
}
