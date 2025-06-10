provider "google" {
  project = "useful-matter-462105-t5"
}


resource "google_storage_bucket" "terafform-state" {
  name     = "terafform-state-devops-project"
  location = "US"

  versioning {
    enabled = true
  }

}

