provider "ibmcloud" {
bluemix_api_key = "${var.bluemix_api_key}" 
}	

resource "null_resource" "prepare_app_zip" {
  triggers = {
    app_version = "100"
    git_repo = "${var.git_repo}"
  }
  provisioner "local-exec" {
    command = <<EOF
    shutdown
        EOF
  }
}

