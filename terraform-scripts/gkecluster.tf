resource "google_container_cluster" "gke-cluster" {

  name               = "cluster-gke"
  network            = "default"
  location           = "europe-west2-b"
  initial_node_count = 2

}
