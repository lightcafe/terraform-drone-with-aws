# https://www.terraform.io/docs/backends/types/s3.html

terraform {
  backend "s3" {
    key        = "terraform.tfstate"
    region      = "ap-northeast-1"
  }
}
