variable "project_id" {
    type = string
    description = "The project ID to deploy resources"
}

variable "region" {
    type = string
    description = "The region to deploy resources"
}

variable "zone" {
    type = string
    description = "The zone to deploy resources"      
}


variable "name" {
    type = list(string)
    description = "value of the name"
}