module "payment" {
    source = "git::https://dasarisaikrishna97@dev.azure.com/dasarisaikrishna97/Roboshop/_git/terraform-mutable//App-module"
    env = var.env
    spot_ins = var.spot_ins
    od_ins = var.od_ins
    instance_type = var.instance_type
    component   = "payment"
    port        = 8080
    is_internal = "true"
    priority    = 600
    APP_VERSION = var.APP_VERSION
}