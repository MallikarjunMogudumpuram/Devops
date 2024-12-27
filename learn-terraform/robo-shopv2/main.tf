module "front-end" {
  source = "./vm"
  example = "front-end"
}


module "catalogue" {
  source = "./vm"
  example = "front-end"
}

module "mysql" {
  source = "./vm"
  example = "front-end"
}

module "redis-cache" {
  source = "./vm"
  example = "front-end"
}

module "rabbit-mq" {
  source = "./vm"
  example = "front-end"
}

