provider "google" {
  project     = var.project
  credentials = "${file("../../../creds/serviceaccount.json")}"

  region = "europe-west-2"
  zone   = "europe-west-2b"
}
module "vpc" {
  source              = "../modules/global"
  env                 = var.env
  company             = var.company
  euw1_public_subnet  = var.euw1_public_subnet
  euw1_private_subnet = var.euw1_private_subnet
  euw2_public_subnet  = var.euw2_public_subnet
  euw2_private_subnet = var.euw2_private_subnet
}
module "euw1" {
  source            = "../modules/euw1"
  network_self_link = module.vpc.out_vpc_self_link
  #subnetwork1         = module.euw1.name
  env                 = var.env
  company             = var.company
  euw1_public_subnet  = var.euw1_public_subnet
  euw1_private_subnet = var.euw1_private_subnet
}
module "euw2" {
  source            = "../modules/euw2"
  network_self_link = module.vpc.out_vpc_self_link
  #subnetwork1           = module.euw2.name
  env                 = var.env
  company             = var.company
  euw2_public_subnet  = var.euw2_public_subnet
  euw2_private_subnet = var.euw2_private_subnet
}


######################################################################
# Display Output Public Instance
######################################################################

output "vpc_self_link" { value = "${module.vpc.out_vpc_self_link}" }
