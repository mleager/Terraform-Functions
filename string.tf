locals {
  string_a = ["Valentina", "Ander", "Olivia", "Sam"]
  string_b = ["Y", "M", "C", "A"]
  string_c = "1wd13s12e1wd1"
  string_d = "Ooo baby I hate the way"
  string_e = "One, Two, Three"
  string_f = "Tremendous"
  string_g = "reverse"
  string_h = "goodbye"
  string_i = "foobar"
}

output "format_list" {
  value = formatlist("Hello, %s!", local.string_a)
}

output "join" {
  value = join("", local.string_b)
}

output "regex" {
  value = regex("[[:lower:]]+", local.string_c)
}

output "replace" {
  value = replace(local.string_d, "hate", "love")
}

output "split" {
  value = split(", ", local.string_e)
}

output "str_contains" {
  value = strcontains(local.string_f, "end")
}

output "str_reverse" {
  value = strrev(local.string_g)
}

output "substring" {
  value = substr(local.string_h, 0, 3)
}

output "trim" {
  value = trim(local.string_i, "far")
}
