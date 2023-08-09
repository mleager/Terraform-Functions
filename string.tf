locals {
  a = ["Valentina", "Ander", "Olivia", "Sam"]
  b = ["Y", "M", "C", "A"]
  c = "1wd13s12e1wd1"
  d = "Ooo baby I hate the way"
  e = "One, Two, Three"
  f = "Tremendous"
  g = "reverse"
  h = "goodbye"
  i = "foobar"
}

output "format_list" {
  value = formatlist("Hello, %s!", local.a)
}

output "join" {
  value = join("", local.b)
}

output "regex" {
  value = regex("[[:lower:]]+", local.c)
}

output "replace" {
  value = replace(local.d, "hate", "love")
}

output "split" {
  value = split(", ", local.e)
}

output "str_contains" {
  value = strcontains(local.f, "end")
}

output "str_reverse" {
  value = strrev(local.g)
}

output "substring" {
  value = substr(local.g, 0, 3)
}

output "trim" {
  value = trim(local.i, "far")
}
