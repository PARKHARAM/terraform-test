terraform{
    required_providers{
        google = " ~> 3.5"
    }

    backend "gcs"{
        credentials = "C:/key/haram.json"
        bucket      = "haram-bucket"
        prefix      = "jenkins.terraform.tfstate"
    }
}
