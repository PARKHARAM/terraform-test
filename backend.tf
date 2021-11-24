terraform{
    required_providers{
        google = " ~> 3.5"
    }

    backend "gcs"{
        bucket      = "haram-bucket"
        prefix      = "jenkins.terraform.tfstate"
    }
}
