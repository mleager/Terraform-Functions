locals {
  collect_a = ["a", "b", "c", "d", "e"]
  collect_b = "apple"
  collect_c = ["a", "a", "b", "b", "c", "c", "d"]
  collect_d = tolist([["a", "b"], [], ["c"]])
  collect_e = ["a", "b", "c"]
  collect_f = {"a": 1, "b": 2, "c": 3}
  collect_g = ["a", "b", "c", 1, 2, 3]
  collect_h = tolist(["a", "b"])
}

output "chunk_list" {
  value = chunklist(local.collect_a, 2)
}

output "contains" {
  value = strcontains(local.collect_b, "pl")
}

output "distinct" {
  value = distinct(local.collect_c)
}

output "flatten" {
  value = flatten(local.collect_d)
}

output "element" {
  value = element(local.collect_a, 2)
}

output "index" {
  value = index(local.collect_a, "c")
}

output "to_list" {
  value = tolist(local.collect_e)
}

output "look_up" {
  value = lookup(local.collect_f, "a", "not found")
}

output "slice" {
  value = slice(local.collect_g, 0, 3)
}

output "zip_map" {
  value = zipmap(local.collect_h, [1, 2])
}
