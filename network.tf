data "google_compute_subnetwork" "subnet" {
  name    = "sbn-hr-1"
  project = "vcp-share-network"
  region  = "asia-northeast3"
}

