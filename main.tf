module "network" {
  source     = "../terraform-network-module/v1"
  cidr_block = "10.0.0.0/16"
}

resource "null_resource" "app" {
  triggers = {
    vpc_id = module.network.vpc_id
  }
}
