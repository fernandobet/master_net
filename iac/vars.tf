variable "env_id"{
    type= string
    description = "environment id"
    default = "dev"
}

variable "sql_pass"{
  type = string
  description = "the SQL server password"
}
variable "location"{
    type = string
    description = "resource location"
    default = "East US"
}
variable "location2"{
    type = string
    description = "resource location"
    default = "East US 2"
}
variable "src_key" {
  type = string
  description = "infrastructure source"
  default = "terraform"
}
variable "subscription_id" {
  type = string
  description = "Azure suscription id"
  default = "f0a74c78-e6fd-4c54-97de-93afb2d4b39d"
}

