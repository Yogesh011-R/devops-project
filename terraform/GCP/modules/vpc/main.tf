resource "google_compute_network" "main" {
  name = "${var.cluster_name}-vpc"
}


resource "google_compute_subnetwork" "private" {
  count         = length(var.private_subnet_cidrs)
  name          = "${var.cluster_name}-private-vpc"
  ip_cidr_range = var.private_subnet_cidrs[count.index]
  region        = var.availability_zones[count.index]
  network       = google_compute_network.main.id

}


