provider "null" {}

resource "null_resource" "deploy_function" {
  provisioner "local-exec" {
    command = "echo 'Simulating OpenFaaS deployment in CI/CD pipeline'"
  }
}

resource "null_resource" "remove_function" {
  provisioner "local-exec" {
    when    = destroy
    command = "echo 'Simulating function removal'"
  }
}