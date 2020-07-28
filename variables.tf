variable "owner_id" {
  type = string
}

variable "stack_name" {
  type = string
}

variable "block_name" {
  type    = string
  default = "fargate0"
}

variable "env" {
  type = string
}

variable "backend_conn_str" {
  type = string
}
