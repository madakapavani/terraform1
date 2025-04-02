variable "instances" {
    default = ["mysql", "backend", "frontend"]
}

variable "zone_id" {
    default = "Z04026461RROCAMAICOCN"
}

variable "domain_name" {
    default = "ulasala.online"
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
    }
}