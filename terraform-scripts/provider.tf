provider "google" {

  credentials = "${file("../creds/serviceaccount.json")}"
  project     = "cloudclub"
  region      = "europe-west-2"
  zone        = "europe-west-2b"

}
