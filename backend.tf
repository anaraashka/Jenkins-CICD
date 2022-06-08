terraform {
  backend "s3" {
    bucket         = "anaraashka-anar-bucket00000"
    key            = "jenkins/tfstate.tf"
    region         = "us-east-1"
    encrypt        = true
  }
}