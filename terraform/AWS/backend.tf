
terraform {
  backend "s3" {
    bucket       = "terafform-state-devops-project"
    key          = "devops-project/state"
    region       = "us-east-1"
    use_lockfile = true
  }
}
