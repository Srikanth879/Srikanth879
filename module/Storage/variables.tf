variable "name" {
  type        = string
  description = "Name of the storage account"
  
}
variable "stglocation" {
  type        = string
  description = "location of rg"
 
}
variable "stgrg" {
  type        = string
  description = "Name of RG"
  
}
variable "reptype" {
    type = string
    description = "input replication type"
  
}
