data "ns_workspace" "this" {}

data "ns_connection" "network" {
  name = "network"
  type = "aws/network"
}
