
# variable "stgname" {
#   type        = string
#   description = "Name of storage account"

# }
variable "rgname" {
  type        = list(string)
  description = "Name of resource group"

}
variable "rglocation" {
  type        = string
  description = "Location of the resoucrce group"

}
variable "stgreptype" {
  type        = string
  description = "replication type of storage account"

}