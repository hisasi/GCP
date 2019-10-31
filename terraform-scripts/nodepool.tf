resource "google_container_node_pool" "nodepool-1" {
  name               = "node-pool-1"
  location           = "europe-west2-b"
  cluster            = "${google_container_cluster.gke-cluster.name}"
  initial_node_count = 3
}
