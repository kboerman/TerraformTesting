variable "vm_name_server" {
    description = "Name of the VM"
    type = list(string)
    default = ["NL-FRMR-SERV-01"]
}
variable "vm_name_desk" {
    description = "Name of the VM"
    type = list(string)
    default = ["NL-FRMR-DESK-01", "NL-FRMR-DESK-02"]
}

variable "vm_name_server_test" {
    description = "Name of the VM"
    type = list(string)
    default = ["TST-FRMR-SERV01"]
}
variable "vm_name_desk_test" {
    description = "Name of the VM"
    type = list(string)
    default = ["TST-FRMR-DESK01", "TST-FRMR-DESK02"]
}

variable "location" {
    description = "Region to build into"
    default = "West Europe"
}