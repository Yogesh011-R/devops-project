terraform {
  backend "gcs" {
    bucket = "terafform-state-devops-project"
    prefix = "devops-project/state"
  }
}
