locals {
  a = ["a", "b", "c", "d", "e"]
  b = ["a", "b", "c", 1, 2, 3]
  c = [["a", "b"], [], ["c"]]
  d = tuple("a", "b", "c")
  e = {"a": 1, "b": 2, "c": 3}
  f = ["a", "b"]
}

output "chunk_list" {
  value = chunklist(local.a, 2)
}

output "contains" {
  value = strcontains(local.a, "a")
}

output "distinct" {
  value = distinct(local.a)
}

output "flatten" {
  value = flatten(local.c)
}

output "element" {
  value = element(local.a, 2)
}

output "index" {
  value = index(local.a, "c")
}

output "to_list" {
  value = tolist(local.d)
}

output "look_up" {
  value = lookup(local.e, "a", "not found")
}

output "to_map" {
  value = tomap(local.b)
}

output "slice" {
  value = slice(local.b, 0, 3)
}

output "zip_map" {
  value = zipmap(local.b, [1, 2])
}
