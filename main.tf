provider "ibm" {
bluemix_api_key = "${var.bluemix_api_key}" 
}	


data "ibm_space" "space" {
  org   = "${var.org}"
  space = "${var.space}"
}


resource "ibm_service_instance" "service" {
  name       = "${var.service_instance_name}"
  space_guid = "${data.ibm_space.space.id}"
  service    = "${var.service_offering}"
  plan       = "${var.plan}"
  tags       = ["my-service"]
}

