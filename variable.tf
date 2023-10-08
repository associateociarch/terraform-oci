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
  default = "TF1-compartment"
}