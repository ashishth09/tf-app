provider "ibm" {
bluemix_api_key = "${var.bluemix_api_key}" 
}	

data "ibm_space" "space" {
  org   = "${var.org}"
  space = "${var.space}"
}


data "ibm_app_domain_shared" "domain" {
  name = "mybluemix.net"
}

resource "ibm_app_route" "route" {
  domain_guid = "${data.ibm_app_domain_shared.domain.id}"
  space_guid  = "${data.ibm_space.space.id}"
  host        = "ashish-host"
}

//Repeated to create error
resource "ibm_app_route" "route1" {
  domain_guid = "${data.ibm_app_domain_shared.domain.id}"
  space_guid  = "${data.ibm_space.space.id}"
  host        = "ashish-host"
}
