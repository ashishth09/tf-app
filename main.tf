provider "ibm" {
bluemix_api_key = "${var.bluemix_api_key}" 
}	

data "ibm_space" "space" {
  org   = "${var.org}"
  space = "${var.space}"
}

//dummy change
