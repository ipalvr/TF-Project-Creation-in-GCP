resource "google_project" "my_project-in-a-folder" {
  name            = var.name
  project_id      = var.project_id
  folder_id       = var.folder_id
  billing_account = var.billing_account
}