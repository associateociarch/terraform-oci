variable "user_ocid" { }
variable "fingerprint" { }
variable "tenancy_ocid" { }
variable "private_key" { }
variable "region" { }

variable "compartment_id" {
    default = "ocid1.tenancy.oc1..aaaaaaaaiuryxj7mau4rtpaz3n7dyt73ihwzaubjfsee2mtnbyicnoy75fpq"
}

variable "compartment_description" {
  default = "This is a testing compartment"
}

variable "compartment_name" {
  default = "TF-compartment"
}

variable "vcn_cidr_blocks" {
  default = "10.0.0.0/16"
}

variable "vcn_display_name" {
  default = "TF-vnc"
}

variable "subnet" {
  type = map
  default = {
    pub_subnet = "10.0.0.0/24"
    pvt_subnet = "10.0.1.0/24"
  }
}