terraform{
    required_providers{
        google = " ~> 3.5"
    }

    backend "gcs"{
        #credentials = "C:/key/haram.json"
        bucket      = "haram-bucket2"
        prefix      = "jenkins.terraform.tfstate"
    }
}
