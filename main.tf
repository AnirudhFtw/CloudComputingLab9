provider "null" {}

resource "null_resource" "deploy_function" {
  provisioner "local-exec" {
    command = "faas-cli deploy -f stack.yaml"
  }
}

resource "null_resource" "remove_function" {
  provisioner "local-exec" {
    when    = destroy
    command = "faas-cli remove hello-fn"
  }
}