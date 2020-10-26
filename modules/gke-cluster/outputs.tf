/**
 * Copyright 2020 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output "cluster" {
  description = "Cluster resource."
  sensitive   = true
  value       = google_container_cluster.cluster
}

output "endpoint" {
  description = "Cluster endpoint."
  value       = google_container_cluster.cluster.endpoint
}

output "location" {
  description = "Cluster location."
  value       = google_container_cluster.cluster.location
}

output "master_version" {
  description = "Master version."
  value       = google_container_cluster.cluster.master_version
}

output "name" {
  description = "Cluster name."
  value       = google_container_cluster.cluster.name
}

output "ca_certificate" {
  description = "Public certificate of the cluster (base64-encoded)."
  value       = google_container_cluster.cluster.master_auth.0.cluster_ca_certificate
  sensitive   = true
}
   
output "cluster_secondary_range_name" {
  description = "Subnet secondary range name used for pods."
  value       = google_container_cluster.cluster.ip_allocation_policy.0.cluster_secondary_range_name
  sensitive   = true
}
   
output "services_secondary_range_name " {
  description = "Public certificate of the cluster (base64-encoded)."
  value       = google_container_cluster.cluster.ip_allocation_policy.0.services_secondary_range_name 
  sensitive   = true
}
