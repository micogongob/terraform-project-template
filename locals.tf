locals {
  name_prefix = "${lower(var.environment)}-${lower(var.project)}"
}