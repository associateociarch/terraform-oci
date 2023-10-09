resource "oci_identity_compartment" "tf_compartment" {
    #Required
    compartment_id = var.compartment_id
    description = var.compartment_description
    name = var.compartment_name
    enable_delete = "true"
}

resource "oci_core_vcn" "tf_vcn" {
    #Required
    compartment_id = oci_identity_compartment.tf_compartment.id
    #Optional
    cidr_block = var.vcn_cidr_blocks
    display_name = var.vcn_display_name
    depends_on = [ oci_identity_compartment.tf_compartment ]
}

resource "oci_core_subnet" "tf_subnet" {
    for_each = var.subnet
    cidr_block = each.value
    display_name = each.key
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.tf_vcn.id
}
