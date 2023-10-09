terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }



  backend "s3" {
    bucket = "aslamroboshop-remote-state"
    region = "us-east-1"
    dynamodb_table = "roboshop-state-lock"  
    key = "vpc-roboshop"   #what is use this key 
    
     #here we are locking s3 bucket to avid the duplication and some error while exicuting 
   
  }



}


provider "aws" {
  # Configuration options
    region = "us-east-1"

}