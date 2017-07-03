variable "app_version" {
  default = "1"
}

variable "bluemix_api_key" {
  description = "bluemix api key"
}

variable "git_repo" {
  default = "https://github.com/IBM-Bluemix/nodejs-cloudantdb-crud-example"
}

variable "dir_to_clone" {
  default = "/tmp/my_cf_code"
}

variable "app_zip" {
  default = "/tmp/myzip.zip"
}

variable "org" {
  default = ""
}

variable "space" {
  default = ""
}

variable "route" {
  default = "my-e2e-app-route"
}

variable "service_instance_name" {
  default = "myservice"
}

variable "service_offering" {
 default = "cloudantNoSQLDB"
}

variable "plan" {
  default = "Lite"
}

variable "app_name" {
  default = "myapp"
}

variable "command" {
  default = ""
}

variable "buildpack" {
  default = ""
}
