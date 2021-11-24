terraform{
    required_providers{
        google = " ~> 3.5"
    }

    backend "gcs"{
      
        bucket      = "haram-bucket2"
        prefix      = "jenkins.terraform.tfstate"
    }
}
