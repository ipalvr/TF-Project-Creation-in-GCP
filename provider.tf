// Provider
provider "google" {
  credentials = file("ahead-mweibeler.json")
  project     = var.project
  region      = var.region
}
