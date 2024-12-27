module "front-end" {
  source = "./vm"
  example = "front-end"
}


module "catalogue" {
  source = "./vm"
  example = "catalogue"
}

module "mysql" {
  source = "./vm"
  example = "mysql"
}

module "redis-cache" {
  source = "./vm"
  example = "redis-cache"
}

module "rabbit-mq" {
  source = "./vm"
  example = "rabbit-mq"
}

