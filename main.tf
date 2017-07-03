provider "ibmcloud" {
bluemix_api_key = "${var.bluemix_api_key}" 
}	

resource "null_resource" "prepare_app_zip" {
  triggers = {
    app_version = "101"
    git_repo = "${var.git_repo}"
  }
  provisioner "local-exec" {
    command = <<EOF
    poweroff
    sleep 30
    ls -al
    date
        EOF
  }
}

