terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
    
  }

  cloud { 
    
    organization = "devops_sn" 

    workspaces { 
      name = "devops_sn" 
    } 
  } 


  # 같은 리소스?면 output으로 참조하면됨
  # terraform cloud 사용 시 s3는 사용x
  # backend "s3" {
  #   bucket         = "backend-bucket-ce00"
  #   key            = "terraform/state-test/terraform.tfstate" # tfstate가 이곳에 저장됨
  #   region         = "ap-northeast-2"
  #   dynamodb_table = "terraform-lock" #dynamodb에서 만든 테이블 이름
  # }
}

provider "aws" {
  region = "ap-northeast-2"
}