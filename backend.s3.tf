terraform {
  backend "s3" {
    bucket = "tharun-ande-1-bucket"
    key    = "tharun/ande"
    region = "eu-north-1"
  }
}
