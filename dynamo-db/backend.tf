terraform {
  backend "s3" {
    bucket = "tfstate-malcolm-1610"
    key    = "malcolm-state.tfstate"
    region = "ap-southeast-1"
  }
}
