variable "region" {
  default = ""
}
variable "project" {
  description = "GCP project"
  default     = ""
}
variable "name" {
  description = "Name of the Project"
  default     = ""
}
variable "project_id" {
  description = "Project ID"
  default     = ""
}
variable "folder_id" {
  description = "Folder ID where project should go"
  default     = ""
}
variable "billing_account" {
  description = "Billing Account for the Project"
  default     = ""
}